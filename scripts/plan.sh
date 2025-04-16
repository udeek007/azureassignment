#!/bin/bash

set -e

ENV=$1

if [ -z "$ENV" ]; then
  echo "Error: No environment provided."
  echo "Usage: ./scripts/plan.sh dev"
  exit 1
fi

echo "Running Terraform Plan for $ENV..."

terraform plan -var-file="environments/$ENV/terraform.tfvars" -out=tfplan

echo "Terraform Plan completed for $ENV"
