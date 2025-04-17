
# Azure Assignment

## Features

- Infrastructure as Code using Terraform
- CI/CD with Azure DevOps
- Azure Policy implementation and auditing
- Email reporting for non-compliant resources
 

## 🚀 Setup Instructions

### Prerequisites

- Azure Subscription
- Azure CLI (`az`)
- Terraform
- Python 3.8+
- Service Principal with `Contributor` and `Policy Contributor` roles

### 1. Clone the Repo
```bash
git clone https://github.com/udeek007/azureassignment.git
cd azureassignment
```

### 2. Run bootstrap-backend to create azure resource group, blob storage and container which will help you to store terrafrom statefile.
```bash
cd bootstrap-backend
az login 
terraform plan -var-file="../environments/dev/backend.tfvars" 
terraform apply -var-file="../environments/dev/backend.tfvars"
chmod -R +x ../scripts
cd ../ && ./scripts/generate-backend.sh dev
```

### 3. Open Azure Devops to run pipline
1. Login to [Azure DevOps Portal](https://dev.azure.com/udktest/azure_assignment)
2. Inside Pipeline you will get udeek007.azureassignment pipeline
3. Run Pipeline select apply option to apply and destroy option for destroy
4. After validation stage you need to review and approve for respective stages

