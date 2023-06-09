# configuration-files

aliases, configurations, dotfiles, scripts and more.

## .aliases
```sh
# Windows aliases for basic tools.
alias 7z='/c/Program\ Files/7-Zip/7z.exe'
alias np='/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe'
alias saxon='java -jar /c/Program\ Files/Saxonica/SaxonHE11-4J/saxon-he-11.4.jar'
alias batik='java -jar /c/Program\ Files/Apache/batik-1.16/batik-rasterizer-1.16.jar'

# Linux aliases for basic tools.
alias saxon='java -jar /usr/share/java/Saxon-HE.jar'

# Some convenience bash aliases.
alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias md='mkdir -p'
alias rd='rmdir'

# From .bashrc for grep and ls.
alias ls='ls --color=auto'
alias ll='ls -l'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
```
## .gitconfig
```sh
[alias]
    co = checkout
    move = mv
    branches = branch --format='%(HEAD) %(if)%(HEAD)%(then)%(color:brightyellow)%(else)%(color:yellow)%(end)%(refname:short)%(color:reset) %(contents:subject) %(color:green)(%(committerdate:relative)) %(color:blue)[%(authorname)]%(color:reset)'
    logs = log --format='%C(auto)%h%d %s %C(green)(%cr) %C(blue)[%aN]%C(reset)' -n 20
    tags = tag --format='%(color:yellow)%(refname:short)%(color:reset) %(subject) %(color:green)(%(taggerdate:human)) %(color:blue)[%(taggername)]%(color:reset)'
    configure = config --global -e

[core]
    sshCommand = C:/Windows/System32/OpenSSH/ssh.exe

[fetch]
    prune = true

[push]
    autoSetupRemote = true
    default = current

[user]
    email = firstname.lastname@email.address
    name = Firstname Lastname
```
