# Load oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
plugins=(git nvm poetry rust)
ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh

# NVM (NodeJS)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Pyenv (Python)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:/$HOME/.pyenv/bin:/$HOME/.local/bin"
eval "$(pyenv init -)"

# Poetry (Python)
export PATH="$PATH:/$HOME/.poetry/bin"

# Rustup (Rust)
[ -f ~/.cargo/env ] && source $HOME/.cargo/env

# Customisation
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

# Functions
function bojit-sync() {
    export PY_COLORS=1
    export ANSIBLE_FORCE_COLOR=1

    if [ "$(uname)" == "Darwin" ]; then
        export PATH="$HOME/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH"
    fi

    curl https://raw.githubusercontent.com/BOJIT/ansible/main/requirements.yml > ~/.ansible/tmp/requirements.yml
    ansible-galaxy install -r ~/.ansible/tmp/requirements.yml
    rm ~/.ansible/tmp/requirements.yml
    ansible-pull -U https://github.com/BOJIT/ansible.git -K
}
