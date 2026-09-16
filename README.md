Welcome to my development environment!

Current project: Platform CI/CD Pipeline Automation

# Main Goal of This Project:

The goal of this project is to bring together ones understanding of **Terraform**, **Ansible**, and a **CI/CD** pipeline in order to demonstrate how modern infrastructure can be built, configured, and automated from end to end.

Simply put...

Terraform builds the infra,
Ansible configures it,
& CI/CD keeps any updates to the infrastructure consistent and repeatable.  

# Directory Structure

```
development-1/
├── README.md 
├── .github/
│   └── workflows/
│       └── ci.yml
├── ansible/
│   ├── ansible.cfg
│   ├── playbook.yml
│   ├── group_vars/
│   │   └── all.yml
│   ├── inventory/
│   │   └── hosts.ini
│   └── roles/
└── terraform/
    ├── main.tf
    ├── provider.tf
    ├── network.tf
    ├── instance.tf
    ├── variables.tf
    └── cleanup_terraform.sh
```

