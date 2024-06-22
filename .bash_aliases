# How to detect the OS from a Bash script? - see https://stackoverflow.com/q/394230

# Windows aliases for basic tools.
if [[ "$OSTYPE" =~ "msys" ]]; then
    alias 7z='/c/Program\ Files/7-Zip/7z.exe'
    alias vlc='/c/Program\ Files/VideoLAN/VLC/vlc.exe'
    alias fop='/c/Program\ Files/Apache/fop-2.9/fop/fop.bat'
    alias saxon='java -jar /c/Program\ Files/Saxonica/SaxonHE11-4J/saxon-he-11.4.jar'
    alias batik='java -jar /c/Program\ Files/Apache/batik-1.16/batik-rasterizer-1.16.jar'
# Linux aliases for basic tools.
elif [[ "$OSTYPE" =~ "linux" ]]; then
    alias saxon='java -jar /usr/share/java/Saxon-HE.jar'
fi

alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"

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
