#!/usr/bin/env bash
# 

source "$XDG_CONFIG_HOME/zsh/aliases"
source "$XDG_CONFIG_HOME/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$XDG_CONFIG_HOME/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$XDG_CONFIG_HOME/zsh/prompt_setup"


autoload -U compinit; compinit

# #################
# Directory history
# #################

setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
