#!/bin/bash
cd terraform
terraform init
terraform apply -auto-approve

IP=$(terraform output -raw public_ip)

cd ../ansible
echo "[azure]" > inventory.ini
echo "$IP ansible_user=azureuser ansible_password=Password1234!" >> inventory.ini

ansible-playbook -i inventory.ini playbook.yml
