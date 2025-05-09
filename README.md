# 🚀 Azure VM Provisioning & Configuration with Terraform + Ansible

This project demonstrates how to **provision Azure infrastructure** using [Terraform](https://www.terraform.io/) and then **configure the deployed VMs** with [Ansible](https://www.ansible.com/). It's a full-stack infrastructure automation example combining IaC and configuration management best practices.

## 📦 What This Project Does

- Provisions an Azure Resource Group, Virtual Network, Subnet, NIC, and Ubuntu VM using Terraform
- Dynamically retrieves the VM's public IP and creates an Ansible inventory
- Uses Ansible to:
  - Install and start **NGINX**
  - Apply basic configuration
- Fully automated with a one-click `run.sh` script

## 🧱 Tech Stack

| Tool       | Purpose                            |
|------------|------------------------------------|
| Terraform  | Provision Azure resources (IaC)    |
| Ansible    | Post-provision server configuration|
| Azure      | Cloud platform                     |
| Bash       | Script automation glue             |

## 📁 Folder Structure

azure-infra-project/
├── terraform/
│   ├── main.tf
│   └── outputs.tf
├── ansible/
│   ├── playbook.yml
│   └── inventory.ini (generated)
├── run.sh

## 🛠️ How to Use

> Prerequisites:
> - Azure CLI (`az login`)
> - Terraform installed
> - Ansible installed

```bash
# Clone the repo
git clone https://github.com/yourname/azure-terraform-ansible.git
cd azure-terraform-ansible

# Run the full provisioning + configuration workflow
chmod +x run.sh
./run.sh
```

## ✅ Sample Output

```bash
TASK [Install NGINX] ************************************************
changed: [20.102.55.23]

TASK [Start NGINX] **************************************************
changed: [20.102.55.23]
```

## 🔒 Security Notes

- Credentials used here (like VM password) are for demo only. Use Ansible Vault or Azure Key Vault in real-world deployments.
- Consider setting up SSH key-based login for production.

## 📖 License

MIT License. Feel free to fork and extend.

## 👨‍💻 Author

Built by [Your Name](https://github.com/yourname) — inspired by DevOps best practices.
