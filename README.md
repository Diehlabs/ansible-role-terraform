ansible-role-terraform [![Ansible Lint](https://github.com/CultClassik/ansible-role-terraform/actions/workflows/Ansible%20Lint.yml/badge.svg)](https://github.com/CultClassik/ansible-role-terraform/actions/workflows/Ansible%20Lint.yml)
=========

Installs Terraform and configures system for use.
This will always install the binaries contained in list [tf_versions].
A symlink or shortcut named Terraform will be created that points to the [tf_default_version].
This allows you to maintain multiple versions of the TF CLI when needed.

Requirements
------------

None.

Role Variables
--------------
* tf_user_id: the user ID to configure Terraform for.
* tf_install_dev_tools: [bool] If set to true, will install Golang. Defaults to false.
* tf_versions: '0.12.26' Use this list to specify the version you want to install.
* tf_default_version: '0.13.5' Use this to specify which will be default when you run `terraform` from the CLI. Defaults to the value of tf_install_version.

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
        tf_user_id: chris
        tf_default_version: 0.12.26

License
-------

BSD

Author Information
------------------

It's just by me, nothing fancy.
