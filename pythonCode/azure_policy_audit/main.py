import os
import csv
import smtplib
from datetime import datetime
from email.message import EmailMessage
from azure.identity import DefaultAzureCredential
from azure.mgmt.policyinsights import PolicyInsightsClient

# ========== CONFIGURATION ==========

SUBSCRIPTION_ID = os.getenv("AZURE_SUBSCRIPTION_ID", "your-subscription-id")

# Email Settings
EMAIL_SENDER = 'your_email@gmail.com'
EMAIL_PASSWORD = 'your_app_password'
EMAIL_RECEIVER = 'recipient@example.com'
SMTP_SERVER = 'smtp.gmail.com'
SMTP_PORT = 465

# Report File
TIMESTAMP = datetime.now().strftime("%Y-%m-%d_%H-%M")
REPORT_FILE = f"non_compliant_resources_{TIMESTAMP}.csv"

# ========== FUNCTIONS ==========

def get_non_compliant_resources(subscription_id):
    credential = DefaultAzureCredential()
    policy_client = PolicyInsightsClient(credential)
    results = []

    print(f"Auditing subscription: {subscription_id}")

    query = policy_client.policy_states.list_query_results_for_subscription(
        policy_states_resource='latest',
        subscription_id=subscription_id,
        filter="complianceState eq 'NonCompliant'"
    )

    for result in query:
        results.append({
            "resourceId": result.resource_id,
            "policyDefinition": result.policy_definition_name,
            "complianceState": result.compliance_state,
            "timestamp": result.timestamp.isoformat()
        })

    return results

def save_to_csv(data, filename):
    with open(filename, mode='w', newline='') as file:
        writer = csv.DictWriter(file, fieldnames=["resourceId", "policyDefinition", "complianceState", "timestamp"])
        writer.writeheader()
        writer.writerows(data)

def send_email(report_path):
    print("Sending email...")
    msg = EmailMessage()
    msg['Subject'] = 'Azure Policy Non-Compliant Resources Report'
    msg['From'] = EMAIL_SENDER
    msg['To'] = EMAIL_RECEIVER
    msg.set_content('Attached is the report of non-compliant Azure resources.')

    with open(report_path, 'rb') as f:
        msg.add_attachment(f.read(), maintype='application', subtype='csv', filename=os.path.basename(report_path))

    with smtplib.SMTP_SSL(SMTP_SERVER, SMTP_PORT) as smtp:
        smtp.login(EMAIL_SENDER, EMAIL_PASSWORD)
        smtp.send_message(msg)
    print("Email sent successfully.")

def main():
    non_compliant = get_non_compliant_resources(SUBSCRIPTION_ID)

    if not non_compliant:
        print(" No non-compliant resources found.")
        return

    save_to_csv(non_compliant, REPORT_FILE)
    print(f"Report saved to: {REPORT_FILE}")

    send_email(REPORT_FILE)

if __name__ == "__main__":
    main()
