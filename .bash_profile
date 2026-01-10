# make sure ~/.local/bin is added to the PATH variable.
if [[ :$PATH: != *:$HOME/.local/bin:* ]]; then export PATH=~/.local/bin:$PATH; fi

# make sure .bash_aliases and .config/git/prompt are loaded.
if [ -s ~/.bash_aliases ]; then . ~/.bash_aliases ; fi
if [ -s ~/.config/git/prompt ]; then . ~/.config/git/prompt ; fi

# configure bat as man pager.
if [ -x "$(command -v bat)" ]; then export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'" ; fi

# https://stackoverflow.com/q/10488498
PROMPT_COMMAND='history -a'
