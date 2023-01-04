#!/bin/bash
# FILE:         init.sh
# DESCRIPTION:  Install basic requirements for Ansible-pull managed machine
# AUTHOR:       James Bennion-Pedley
# DATE CREATED: 04/01/2023

#------------------------------------------------------------------------------#

set -e

python3 -m pip install --user ansible
ansible-pull -U https://github.com/BOJIT/ansible.git
