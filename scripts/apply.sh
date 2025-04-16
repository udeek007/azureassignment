#!/bin/bash

set -e

ENV=$1

if [ -z "$ENV" ]; then
  echo "Error: No environment provided."
  echo "Usage: ./scripts/plan.sh dev"
  exit 1
fi

echo "Running Terraform apply for $ENV..."

terraform apply -var-file="environments/$ENV/terraform.tfvars" -auto-approve

echo "Terraform deployed completed for $ENV"
