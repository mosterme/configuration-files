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
