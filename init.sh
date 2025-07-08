#!/bin/bash
# FILE:         init.sh
# DESCRIPTION:  Install basic requirements for Ansible-pull managed machine
# AUTHOR:       James Bennion-Pedley
# DATE CREATED: 04/01/2023

#------------------------------------------------------------------------------#

set -e
cd ~

# Ensure ansible runs with coloured terminal output
export PY_COLORS=1
export ANSIBLE_FORCE_COLOR=1

# Bare minimum, need python3, pip, curl and git

# If not on MacOS, assume Debian-based system
if [[ "$(uname)" == "Darwin" ]]; then
    # Temporarily add system Python Pip to our path to install Ansible into...
    export PATH="$HOME/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH"
    sudo pip3 install --upgrade pip
    # Install ansible to system Python
    pip3 install ansible
else
    sudo apt-get install -y curl git
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python3 get-pip.py --user --no-warn-script --break-system-packages
    rm ~/get-pip.py
    # Install ansible and temporarily add to PATH
    python3 -m pip install --user ansible psutil --no-warn-script --break-system-packages
    PATH=$PATH:~/.local/bin
fi


# Install ansible-galaxy dependencies: handled afterwards in alias
mkdir -p ~/.ansible/tmp
curl https://raw.githubusercontent.com/BOJIT/ansible/main/requirements.yml > ~/.ansible/tmp/requirements.yml
ansible-galaxy install -r ~/.ansible/tmp/requirements.yml
rm ~/.ansible/tmp/requirements.yml

# Ansible handles the rest!
echo "##########################################"
ansible-pull -U https://github.com/BOJIT/ansible.git -K
