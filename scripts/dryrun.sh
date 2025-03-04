#!/bin/sh
set -ex
terraform init -var USERID=${userID} -input=false -no-color -backend-config="key=terraform.tfstate" -backend-config="narutaso-bucket"
# terraform init -input=false -no-color -backend-config="key=terraform.tfstate" -backend-config="bucket=narutaso-bucket"
terraform validate -no-color
# tfcmt plan -- terraform plan -no-color -var USERID=${userID}
