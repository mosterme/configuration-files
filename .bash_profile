# make sure ~/.local/bin is added to the PATH variable.
if [[ :$PATH: != *:$HOME/.local/bin:* ]]; then export PATH=~/.local/bin:$PATH; fi

# make sure .bash_aliases and .config/git/prompt are loaded.
if [ -s ~/.bash_aliases ]; then . ~/.bash_aliases ; fi
if [ -s ~/.config/git/prompt ]; then . ~/.config/git/prompt ; fi

# https://stackoverflow.com/q/10488498
PROMPT_COMMAND='history -a'
