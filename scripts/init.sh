#!/bin/bash

# Load environment
ENV=$1

if [ -z "$ENV" ]; then
  echo "❌ ERROR: Environment not specified!"
  echo "Usage: ./init.sh <environment>"
  exit 1
fi

# Navigate to global where main.tf exists
# cd environments/$ENV/

#cd global/
echo "Initializing Terraform for $ENV..."
terraform init -backend-config=./environments/$ENV/backend.tfvars

#echo "Applying Terraform with $ENV variables..."
#terraform apply -var-file="./environments/$ENV/terraform.tfvars" -lock=false

#terraform apply -var-file="../environments/$ENV/terraform.tfvars" -lock=false