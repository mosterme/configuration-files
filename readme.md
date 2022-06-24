# configuration-files

aliases, configurations, dotfiles, scripts and more.

## dot.aliases
```sh
# Windows aliases for basic tools.
alias 7z='/c/Program\ Files/7-Zip/7z.exe'
alias np='/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe'

# Linux aliases for basic tools.
alias saxon='java -jar /usr/share/java/Saxon-HE.jar'

# More convenience bash aliases.
# Check .bashrc for grep and ll.
alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias md='mkdir -p'
alias rd='rmdir'
```

## dot.gitconfig
```sh
[alias]
	co = checkout
	ll = log --oneline -n 20
	move = mv

[user]
	email = mosterme@users.noreply.github.com
	name = Michael Ostermeier
```

## git-prompt.sh
```sh
# https://digitalfortress.tech/tutorial/setting-up-git-prompt-step-by-step/
# slightly adjusted version for windows - file ~/.config/git/git-prompt.sh

# if git-prompt.sh exists, set options and execute it
if test -z "$WINELOADERNOEXEC"
then
  GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
  COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
  COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
  COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
  GIT_PS1_HIDE_IF_PWD_IGNORED=true
  GIT_PS1_SHOWCOLORHINTS=true
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWSTASHSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  GIT_PS1_SHOWUPSTREAM="auto"
  if test -f "$COMPLETION_PATH/git-prompt.sh"
  then
    . "$COMPLETION_PATH/git-completion.bash"
    . "$COMPLETION_PATH/git-prompt.sh"
  fi
fi

# store colors
RED="\[\033[31m\]"
BLUE="\[\033[34m\]"
CYAN="\[\033[36m\]"
BLACK='\[\033[0m\]'
GREEN="\[\033[32m\]"
ORANGE='\[\033[33m\]'
VIOLET='\[\033[01;35m\]'
YELLOW="\[\033[01;33m\]"
MAGENTA="\[\033[35m\]"

function color_my_prompt {
  local __user_and_host="$GREEN\u@\h"
  local __cur_location="$ORANGE\w"
  local __git_branch_color="$CYAN"
  local __prompt_tail="$VIOLET$"
  local __user_input_color="$BLACK"
  local __git_branch=$(__git_ps1);

  # colour branch name depending on state
  if [[ "${__git_branch}" =~ "*" ]]; then     # if repository is dirty
      __git_branch_color="$RED"
  elif [[ "${__git_branch}" =~ "$" ]]; then   # if there is something stashed
      __git_branch_color="$YELLOW"
  elif [[ "${__git_branch}" =~ "%" ]]; then   # if there are only untracked files
      __git_branch_color="$MAGENTA"
  elif [[ "${__git_branch}" =~ "+" ]]; then   # if there are staged files
      __git_branch_color="$BLUE"
  fi

  # Build the PS1 (Prompt String)
  PS1="\n$__user_and_host $__cur_location$__git_branch_color$__git_branch \n$__prompt_tail$__user_input_color "
}

# configure PROMPT_COMMAND which is executed each time before PS1
export PROMPT_COMMAND=color_my_prompt
```

## readme.sh
```sh
#!/bin/sh

echo "# configuration-files"
echo
echo "aliases, configurations, dotfiles, scripts and more."
echo

for file in dot.* *.sh
do
  if [ ! -d "$file" ]; then
      echo "## $file"
      echo "\`\`\`sh"
      cat "$file"
      echo "\`\`\`"
      echo
  fi
done
```

## sys-update.sh
```sh
#!/bin/sh
sudo apt update && sudo apt full-upgrade && sudo apt clean
```

## welcome.sh
```sh
#!/bin/sh
d=$(cat /etc/issue.net)
v=$(uname -srm)
h=$(hostname)

c='\033[0;32m'
y='\033[1;33m'
m='\033[1;31m'
k='\033[0m'

echo $c$d$k - $y$v$k - $m$h$k
echo
```
