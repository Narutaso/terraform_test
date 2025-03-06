#!/bin/sh
set -ex
# terraform init -var USERID=${userdID} -input=false -no-color -backend-config="key=terraform.tfstate" -backend-config="bucket=narutaso-bucket"
# terraform init -var USERID=458485069334 -input=false -no-color -backend-config="key=terraform.tfstate" -backend-config="bucket=narutaso-bucket"
terraform init -input=false -no-color -backend-config="key=terraform.tfstate" -backend-config="bucket=narutaso-bucket"
terraform validate -no-color
terraform plan -no-color
# terraform plan -no-color -var USERID=$1
# tfcmt plan -- terraform plan -no-color -var USERID=${userID}
# tfcmt plan -- terraform plan -no-color -var USERID=458485069334
