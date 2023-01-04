#!/bin/bash
# FILE:         init.sh
# DESCRIPTION:  Install basic requirements for Ansible-pull managed machine
# AUTHOR:       James Bennion-Pedley
# DATE CREATED: 04/01/2023

#------------------------------------------------------------------------------#

set -e
cd ~

# Bare minimum, need python3, pip, curl and git
sudo apt-get install -y curl git
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user --no-warn-script
rm ~/get-pip.py

# Install ansible and temporarily add to PATH
python3 -m pip install --user ansible psutil --no-warn-script
PATH=$PATH:~/.local/bin

# Install ansible-galaxy dependencies: handled afterwards in alias
curl https://raw.githubusercontent.com/BOJIT/ansible/main/requirements.yml > ~/.ansible/tmp/requirements.yml
ansible-galaxy install -r ~/.ansible/tmp/requirements.yml
rm ~/.ansible/tmp/requirements.yml

# Ansible handles the rest!
echo "##########################################"
ansible-pull -U https://github.com/BOJIT/ansible.git
