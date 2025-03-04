#!/bin/sh
set -ex
terraform init -var USERID=${userID} -input=false -no-color -backend-config="key=terraform.tfstate" -backend-config="bucket=narutaso-bucket"
# terraform init -var USERID=458485069334 -input=false -no-color -backend-config="key=terraform.tfstate" -backend-config="bucket=narutaso-bucket"
terraform validate -no-color
tfcmt plan -- terraform plan -no-color -var USERID=${userID}
