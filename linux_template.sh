#!/bin/bash
# Variables
dot="$HOME/dotfiles"
HISTCONTROL=ignoreboth

# Exports
export BLOCKSIZE=1k
export CPLUS_INCLUDE_PATH="$HOME/opt/include:$CPLUS_INCLUDE_PATH"
export C_INCLUDE_PATH="$HOME/opt/include:$C_INCLUDE_PATH"
export LD_LIBRARY_PATH="$HOME/opt/lib:$LD_LIBRARY_PATH"
export MANPATH="$HOME/opt/doc:$MANPATH"
export PATH="$HOME/opt/bin:$PATH"
export PS1="\[$(tput bold)\]\e[38;5;42m\! \[$(tput sgr0)\]\e[38;5;4m[\D{%m/%d/%H:%M:%S}] \[$(tput bold)\]\[\e[38;5;223m\]\u \[\e[38;5;7m\]"

# Functions
function a() { git add "$@" ; }
function add() { git add "$@" ; }
function c() { git commit -m "$@" ; }
function commit() { git commit -m "$@" ; }
function dev() { docker run -it $dev_shell ; }
function gd() { git diff "$@" ; }
function gdiff() { git diff "$@" ; }
function json() { pygmentize -l json "$@" ; }
function p() { git push "$@" ; }
function push() { git push "$@" ; }
function s() { git status "$@" ; }
function shell() { docker run -it $default_shell ; }
function status() { git status "$@" ; }
function dud() { du -h -d 1 "$@" ; }
# Exa installed
#function l() { exa -l --git $@ ;  }
#function la() { exa -a  $@ ;  }
#function ll() { exa -l  $@ ;  }
#function ls() { exa -l --git -@ $@ ;  }
#function lsai() { -l exa *.{png,jpg,jpeg,gif,bmp} 2>/dev/null ;  }
#function lsav() { -l exa *.{mp4,avi,mkv} 2>/dev/null ;  }
#function lt() { exa -l  -s modified $@ ;  }
#function ltr() { exa -l  -s modified -r $@ ;  }
#function lz() { exa -l  -s size $@ ;  }
#function lzr() { exa -l  -s size -r $@ ;  }
#function tree() { exa -l --git -T "$@" ; } 

# Aliases
alias rd='rm -r "$@"'
alias ...='cd ../../'                       # Go back 2 directory levels
alias ..='cd ../'                           # Go back 1 directory level
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias anon='export HISTFILE=/dev/null'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias condaUpdate="conda update --prefix $HOME/.conda/ anaconda"
alias df="df -h $@"
alias dot="cd $dot"
alias du='du -h'
alias dud='du -h -d $1'
alias editvimprofile="vim $HOME/.vimrc"
alias recent='ls -tr "$@"'
alias ~="cd ~"                              # ~:            Go Home
function packthis() { tar cvzf $1.tar.gz $1/. ; }
function pack() {
    for i in *; do
        if [ -d $i ]; then
            tar cvzf $i.tar.gz $i/.
        fi
    done
}
function clear() {
    for i in *; do
        if [ -d $i ]; then
            rm -r $i
        fi
    done
}
