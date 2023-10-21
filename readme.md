# configuration-files

aliases, configurations, dotfiles, scripts and more.

* [What do you use to manage your dotfiles?](https://news.ycombinator.com/item?id=11070797)
* [How to store dotfiles in a bare git repository.](https://www.atlassian.com/git/tutorials/dotfiles)
* [How to set the default text editor](https://wiki.debian.org/TextEditor#How_to_set_a_default_text_editor) on Debian.

## .aliases
```sh
# How to detect the OS from a Bash script? - see https://stackoverflow.com/q/394230
if [[ "$OSTYPE" =~ "msys" ]]; then

# Windows aliases for basic tools.
alias 7z='/c/Program\ Files/7-Zip/7z.exe'
alias np='/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe'
alias saxon='java -jar /c/Program\ Files/Saxonica/SaxonHE11-4J/saxon-he-11.4.jar'
alias batik='java -jar /c/Program\ Files/Apache/batik-1.16/batik-rasterizer-1.16.jar'
elif [[ "$OSTYPE" =~ "linux" ]]; then

# Linux aliases for basic tools.
alias saxon='java -jar /usr/share/java/Saxon-HE.jar'
fi

# Some convenience bash aliases.
alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias md='mkdir -p'
alias rd='rmdir'

# From .bashrc for grep and ls.
alias ls='ls --color=auto --g'
alias ll='ls -l'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# https://stackoverflow.com/q/10488498
PROMPT_COMMAND='history -a'
```
## .gitconfig
```sh
[alias]
    co = checkout
    move = mv
    branches = branch --format='%(HEAD) %(if)%(HEAD)%(then)%(color:brightyellow)%(else)%(if)%(worktreepath)%(then)%(color:cyan)%(else)%(if)%(upstream)%(then)%(color:yellow)%(else)%(color:red)%(end)%(end)%(end)%(if)%(symref)%(then)%(color:bold)%(refname:strip=2) -> %(symref:short)%(else)%(refname:short)%(end)%(color:reset) %(contents:subject) %(color:green)(%(committerdate:relative)) %(color:blue)[%(authorname)]%(color:reset)'
    logs = log --format='%C(auto)%h%d %s %C(green)(%cr) %C(blue)[%aN]%C(reset)' -n 20
    tags = tag --format='%(color:yellow)%(refname:short)%(color:reset) %(subject) %(color:green)(%(taggerdate:human)) %(color:blue)[%(taggername)]%(color:reset)'
    configure = config --edit --global

[core]
    sshCommand = C:/Windows/System32/OpenSSH/ssh.exe

[fetch]
    prune = true

[push]
    autoSetupRemote = true
    default = current

[user]
    email = mosterme@users.noreply.github.com
    name = Michael Ostermeier
```
