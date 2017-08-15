#!/bin/bash
curl -o /home/soln.zip $TEMPLATE_URL && unzip /home/soln.zip -d /home/
curl -o /home/bmcs_api_key.pem $PRIVATE_KEY_URL
pwd
terraform init 
terraform plan
terraform apply
