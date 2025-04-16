#!/bin/bash

set -e

ENV=$1  # First argument: environment (dev, staging, production)

if [ -z "$ENV" ]; then
  echo "Error: No environment provided."
  echo "Usage: ./scripts/destroy.sh dev"
  exit 1
fi

echo "WARNING: This will destroy resources in $ENV!"
# read -p "Are you sure? (yes/no): " CONFIRM

# if [ "$CONFIRM" != "yes" ]; then
#   echo "Destroy aborted."
#   exit 1
# fi

echo "Destroying Terraform resources for environment: $ENV"

terraform init -reconfigure -backend-config=./environments/$ENV/backend.tf
terraform destroy -var-file="./environments/$ENV/terraform.tfvars" -auto-approve

echo "Terraform Destroy completed for $ENV"
