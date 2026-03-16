# XDG
export XDG_CONFIG_HOME=$HOME/.config
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# editor
export EDITOR="hx"
export VISUAL="hx"

# Man pages
export MANPAGER="nvim +Man!"

# fzf
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"


FZF_COLORS="bg+:-1,\
fg:gray,\
fg+:white,\
border:black,\
spinner:0,\
hl:yellow,\
header:blue,\
info:green,\
pointer:red,\
marker:blue,\
prompt:gray,\
hl+:red"

export FZF_DEFAULT_OPTS="--height 60% \
--border sharp \
--layout reverse \
--color '$FZF_COLORS' \
--prompt '∷ ' \
--pointer ▶ \
--marker ⇒"



# PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

export CC=/opt/homebrew/bin/gcc-14
export CXX=/opt/homebrew/bin/g++-14

export NOTMUCH_CONFIG=~/.config/notmuch/config

