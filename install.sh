curl -o /home/soln.zip $ZIPURL
unzip /home/soln.zip -d /home/
echo "Prepping to Terraform"
terraform plan /home
terraform apply /home
