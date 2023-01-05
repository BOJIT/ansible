export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

source $ZSH/oh-my-zsh.sh

# NVM (Node)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Pipenv/Pyenv (Python)
export PATH="$PATH:/$HOME/.pyenv/bin:/$HOME/.local/bin"
eval "$(pyenv virtualenv-init -)"

# Functions
function bojit-sync() {
    curl https://raw.githubusercontent.com/BOJIT/ansible/main/requirements.yml > ~/.ansible/tmp/requirements.yml
    ansible-galaxy install -r ~/.ansible/tmp/requirements.yml
    rm ~/.ansible/tmp/requirements.yml
    ansible-pull -U https://github.com/BOJIT/ansible.git --ask-become-pass
}
