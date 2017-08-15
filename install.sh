#!/bin/bash
curl -o /home/soln.zip $TEMPLATE_URL
curl -o /home/bmcs_api_key.pem $PRIVATE_KEY_URL
unzip soln.zip -d .
rm -rf soln.zip
pwd && ls
terraform init 
terraform plan
terraform apply
