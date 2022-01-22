ansible-role-terraform [![Ansible Test](https://github.com/Diehlabs/ansible-role-terraform/actions/workflows/test.yml/badge.svg)](https://github.com/Diehlabs/ansible-role-terraform/actions/workflows/test.yml)
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
* terraform_user_id: the user ID to configure Terraform for.
* terraform_alt_versions: a dict of alternate vesions to install.
* terraform_backend_creds: a list of TFE/TFC hosts and tokens.
* tf_install_dev_tools: [bool] If set to true, will install Golang. Defaults to false.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

---
- hosts: localhost
  tasks:
    - include_role:
        name: terraform
      vars:
        terraform_user_id: chris
        tf_default_version: 0.12.26

License
-------

BSD

Author Information
------------------

It's just by me, nothing fancy.
