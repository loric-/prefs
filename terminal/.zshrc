# Red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"
 
# Enable Prezto
if [ -f $HOME/.zprezto/init.zsh ]; then
    source $HOME/.zprezto/init.zsh
fi

# Source bashrc file
source $HOME/.bashrc

# Zsh specific aliases
alias zshr="source ~/.zshrc"
# Get full history by default
alias history="history -E 1"

# Add some autocompletions
compdef sshrc=ssh
compdef vims=vim

zstyle ':prezto:module:prompt' theme 'steeef'
