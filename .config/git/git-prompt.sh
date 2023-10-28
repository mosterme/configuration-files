# see: https://digitalfortress.tech/tutorial/setting-up-git-prompt-step-by-step/
# slightly adjusted version of /etc/profile.d/git-prompt.sh from git for windows

GIT_PS1_HIDE_IF_PWD_IGNORED=true
GIT_PS1_SHOWCOLORHINTS=
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"

if test -z "$WINELOADERNOEXEC"
then
	GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
	COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
	COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
	COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
	if test -f "$COMPLETION_PATH/git-prompt.sh"
	then
		. "$COMPLETION_PATH/git-completion.bash"
		. "$COMPLETION_PATH/git-prompt.sh"
	fi
fi

function color_branch {
	branch="$(__git_ps1)"     # colour branch name output depending on state
	  if [[ "${branch}" =~ "*" ]]; then color='\033[01;31m' # bright red if repository is dirty
	elif [[ "${branch}" =~ "$" ]]; then color='\033[01;33m' # bright yellow if something is stashed
	elif [[ "${branch}" =~ "%" ]]; then color='\033[01;35m' # bright magenta if there are untracked files
	elif [[ "${branch}" =~ "+" ]]; then color='\033[01;36m' # bright cyan if there are staged files
	else color='\033[36m'     # default color to cyan if repository is "clean"
	fi
	echo -e $color $branch
}

PS1='\[\033]0;$TITLEPREFIX:$PWD\007\]' # set window title
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\033[32m\]'       # change to green
PS1="$PS1"'\u@\h '             # user@host<space>
PS1="$PS1"'\[\033[33m\]'       # change to brownish yellow
PS1="$PS1"'\w'                 # current working directory
PS1="$PS1"'`color_branch`'     # colorize the branch name
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\033[0;35m\]'     # change to magenta
PS1="$PS1"'\$ '                # prompt $ or # (root)
PS1="$PS1"'\[\033[0m\]'        # reset color
MSYS2_PS1="$PS1"               # for MSYS2 SDK's bash.basrc
