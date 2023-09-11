#!/bin/bash
# FILE:         init.sh
# DESCRIPTION:  Install basic requirements for Ansible-pull managed machine
# AUTHOR:       James Bennion-Pedley
# DATE CREATED: 04/01/2023

#------------------------------------------------------------------------------#

set -e
cd ~

# Install ansible-galaxy dependencies: handled afterwards in alias
mkdir -p ~/.ansible/tmp
curl https://raw.githubusercontent.com/BOJIT/ansible/main/requirements.yml > ~/.ansible/tmp/requirements.yml
ansible-galaxy install -r ~/.ansible/tmp/requirements.yml
rm ~/.ansible/tmp/requirements.yml

# Ansible handles the rest!
echo "##########################################"
ansible-pull -U https://github.com/BOJIT/ansible.git
