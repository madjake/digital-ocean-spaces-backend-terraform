#!/bin/bash
# Wrapper around terraform to ensure tfplan is used. Would also be easy 
# to add an arg to use different .tfvars per environment
cd "$(dirname "$0")"

if [[ ! -f "terraform" ]]; then
  ./get_terraform.sh
fi

cd ..

ACTION=$1

if [ -z "$ACTION" ]; then
  echo -e "Usage:\n\n$0 plan\n$0 apply"
  exit 1
fi

./bin/terraform init -input=false -reconfigure -backend-config=terraform.tfbackend

if [ "$ACTION" = "plan" ]; then
  ./bin/terraform plan -out "plan.tfplan"
elif [ "$ACTION" = "apply" ]; then
  ./bin/terraform apply plan.tfplan
fi
