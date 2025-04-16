#!/bin/bash

# Usage: ./generate-backend.sh dev

ENV=$1

if [[ -z "$ENV" ]]; then
  echo "Usage: $0 <environment>"
  exit 1
fi

# Load tfvars (manually sourcing because it's not shell syntax)
VARS_FILE="environments/$ENV/backend.tfvars"
if [[ ! -f "$VARS_FILE" ]]; then
  echo "Vars file not found: $VARS_FILE"
  exit 1
fi

# Extract vars from file
RESOURCE_GROUP_NAME=$(grep resource_group_name "$VARS_FILE" | cut -d= -f2 | tr -d ' "')
STORAGE_ACCOUNT_NAME=$(grep storage_account_name "$VARS_FILE" | cut -d= -f2 | tr -d ' "')
CONTAINER_NAME=$(grep container_name "$VARS_FILE" | cut -d= -f2 | tr -d ' "')
STATE_KEY="${ENV}.terraform.tfstate"

# Generate backend.tf
BACKEND_FILE="environments/$ENV/backend.tf"

mkdir -p environments/$ENV

sed \
  -e "s|\${RESOURCE_GROUP_NAME}|$RESOURCE_GROUP_NAME|" \
  -e "s|\${STORAGE_ACCOUNT_NAME}|$STORAGE_ACCOUNT_NAME|" \
  -e "s|\${CONTAINER_NAME}|$CONTAINER_NAME|" \
  -e "s|\${STATE_KEY}|$STATE_KEY|" \
  templates/backend.tpl > "$BACKEND_FILE"

echo "Generated $BACKEND_FILE"
