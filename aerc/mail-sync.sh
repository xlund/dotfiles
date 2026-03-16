#!/bin/sh
#
PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin"
HOME="/Users/nsld"
XDG_CONFIG_HOME="$HOME/.config"
NOTMUCH_CONFIG="$XDG_CONFIG_HOME/notmuch/config"
MBSYNC=$(pgrep mbsync)
NOTMUCH=$(pgrep notmuch)

if [ -n "$MBSYNC" -o -n "$NOTMUCH" ]; then
    echo "Already running one instance of mbsync or notmuch. Exiting..."
    exit 0
fi


echo "Deleting messages tagged as *deleted*"
notmuch search --format=text0 --output=files tag:deleted | xargs -0 --no-run-if-empty rm -v

mbsync -a -c "$XDG_CONFIG_HOME/isync/mbsyncrc"
notmuch new --quiet
