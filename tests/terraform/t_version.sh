#!/bin/bash

# This script finds out the version of the Terraform and compares with the reference

terraform_version_command=$(terraform version)
terver=$(echo $terraform_version_command | head -n  1| cut -c 12-16)
etalon_version=$(echo "1.3.7")

terraform version

if [ $terver == $etalon_version ]
then
echo Terraform version OK
else
echo Terraform version NOT OK
exit 1
fi