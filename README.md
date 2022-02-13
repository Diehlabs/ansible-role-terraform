# ansible-role-terraform
[![Ansible CI](https://github.com/Diehlabs/ansible-role-terraform/actions/workflows/ci.yml/badge.svg)](https://github.com/Diehlabs/ansible-role-terraform/actions/workflows/ci.yml)
=========

Installs Terraform and configures system for use.
This allows you to maintain multiple versions of the TF CLI when needed.

Terraform 1.0.2 is the first version that was built for Darwin ARM64, so you can't include lower versions for this in terraform_alt_versions if you are using this type of system!

TODO:
add golang install from pkg file

Requirements
------------

None.

Role Variables
--------------

| Variable name | Description | Example value | Default value | Required? |
|---|---|---|---|---|
terraform_user_id | User ID for file perms etc | myuserid | {{ user_id }} | YES |
terraform_backend_creds | TFE/TFC credential data | see default/main.yml | not defined | NO |
terraform_cli_config_extra | Non-TFE/TFC credential data for terraformrc | "provider_installation { ..." | not defined | NO |
terraform_versions | Versions of TF CLI to install | see default/main.yml | default: 1.1.5| NO |

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

---
- hosts: localhost
  tasks:
    - include_role:
        name: ansible-role-terraform
      vars:
        terraform_user_id: chris

License
-------

MIT

Author Information
------------------

[Chris Diehl](https://www.linkedin.com/in/chrisdiehl817/)
