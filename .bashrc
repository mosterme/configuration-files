# make sure my .aliases and git-prompt.sh are loaded.
if [ -s ~/.aliases ]; then . ~/.aliases ; fi

if [ -s ~/.config/git/git-prompt.sh ]; then . ~/.config/git/git-prompt.sh ; fi

if [ -s ~/.config/git/xdg-ninja ]; then . ~/.config/git/xdg-ninja ; fi

# configure bat as man pager.
if [ -x "$(command -v bat)" ]; then export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'" ; fi

export MAN_POSIXLY_CORRECT=1

# https://stackoverflow.com/q/10488498
PROMPT_COMMAND='history -a'
