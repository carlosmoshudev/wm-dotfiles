# Path: ~/.zshrc

autoload -Uz promptinit
promptinit
prompt adam1
setopt histignorealldups sharehistory

bindkey -e

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

if [[ $- != *i* ]]; then
    return
fi

function mkc() { mkdir -p "$@" && cd "$_"; }
function new-node() {
    mkc $1 && npm init -y
    echo "Created a new node project in $1"
    echo "# $1" >> README.md
    echo "node_modules" >> .gitignore
    mkc src && echo "// The project entry point" >> index.js
    echo "Created the initial file structure"
    cd ..
    git init && git add .
    echo "Initialized git repo and added all files"
    git commit -m "Initial commit"
    git branch -M main
    echo "Created the main branch"
    # Check if a remote repo was specified and add it
    if [ -n "$2" ]; then
        git remote add origin $2
        git push -u origin main
        echo "Added remote repo $2"
    fi
    code .
}
function install() {
    if [ $# -eq 0 ]; then
        echo "No arguments supplied"
        return 1
    fi
    sudo apt-get install $@ -y
}
function uninstall() {
    if [ $# -eq 0 ]; then
        echo "No arguments supplied"
        return 1
    fi
    sudo apt-get remove $@ -y
}


source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLES="fg=#4C566A,underline"

alias ls="lsd --group-dirs=first"
alias ll="lsd -lh --group-dirs=first"
alias la="lsd -a --group-dirs=first"
alias lah="lsd -lah --group-dirs=first"
alias ..="cd ..; ls"
alias ...="cd ../..; ls"
alias g="git"
alias gc="git clone"
alias gm="git commit -m"
alias gp="git push"
alias gf="git fetch"
alias d="docker"
alias dc="docker-compose"
alias grep="grep --color=auto"
alias htserver="open http://localhost:8080; python -m http.server"
alias c="clear"
alias e="exit"

ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
ZSH_HIGHLIGHT_STYLES[alias]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=orange,underline
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=063
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[assign]=none

