# How to detect the OS from a Bash script? - see https://stackoverflow.com/q/394230

# Windows aliases for basic tools.
if [[ "$OSTYPE" =~ "msys" ]]; then
    alias 7z='/c/Program\ Files/7-Zip/7z.exe'
    alias open='explorer.exe'
    alias vlc='/c/Program\ Files/VideoLAN/VLC/vlc.exe'
    alias fop='/c/Program\ Files/Apache/fop-2.9/fop/fop.bat'
    alias yed='java -jar /c/Program\ Files/yworks/yed-3.24/yed.jar'
    alias saxon='java -jar /c/Program\ Files/Saxonica/SaxonHE12-5J/saxon-he-12.5.jar'
    alias batik='java -jar /c/Program\ Files/Apache/batik-1.18/batik-rasterizer-1.18.jar'
# Linux aliases for basic tools.
elif [[ "$OSTYPE" =~ "linux" ]]; then
    alias jpegli='cjpegli'
    alias open='xdg-open'
    alias yed='java -jar /opt/yworks/yed-3.24/yed.jar'
    alias saxon='java -jar /usr/share/java/Saxon-HE.jar'
    alias batik='java -jar /usr/share/java/batik-1.18/batik-rasterizer-1.18.jar'
    alias squiggle='java -jar /usr/share/java/batik-1.18/batik-squiggle-1.18.jar'
fi

alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"

alias cw="date +'calendar week %V'"
alias kw="date +'Kalenderwoche %V'"

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
