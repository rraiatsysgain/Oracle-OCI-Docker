#!/bin/bash
curl -o /home/soln.zip $TEMPLATE_URL
curl -o /home/bmcs_api_key.pem $PRIVATE_KEY_URL
unzip /home/soln.zip -d /home/
rm -rf /home/soln.zip
pwd && ls
terraform init 
terraform plan
terraform apply
