# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init bash)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
eval "$(pyenv virtualenv-init -)"

# Alias
alias vim='nvim'
alias neofetch='fastfetch'
alias matrix='unimatrix -s 95 -c blue'
alias ls='eza --color=always --git --icons=always --no-time --no-user --no-permissions'
alias la='ls -a'
alias lt='ls --tree'
alias vbash='vim ~/.bashrc'
alias vff='vim ~/.config/fastfetch/config.jsonc'
alias chatbot='DATA_DIR=~/.open-webui uvx --python 3.11 open-webui@latest serve'

# Keybind
bind -x '"\C-f": ~/.local/bin/tmux-sessionizer'

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# Zoxide
eval "$(zoxide init bash)"


. "$HOME/.local/bin/env"
