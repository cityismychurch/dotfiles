# zsh
export ZSH="/Users/case/.oh-my-zsh"
ZSH_THEME=powerlevel10k/powerlevel10k
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
plugins=(git pipenv pyenv)
source $ZSH/oh-my-zsh.sh
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# fzf / fd / bat
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_COMPLETION_TRIGGER='**'
export FZF_COMPLETION_OPTS='+c -x'
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    export|unset) fzf "$@" --preview "eval 'echo \$'{}" ;;
    ssh)          fzf "$@" --preview 'dig {}' ;;
    *)            fzf "$@" ;;
  esac
}
function fb { fzf --preview 'bat --style=numbers --color=always {} | head -500' ; }

# local
export PATH="${HOME}/bin:${PATH}"
function editprofile { vim ~/.zshrc ; }
function reprofile { . ~/.zshrc ; }
#source $HOME/.zsh_profile

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# brew
function myupdate { softwareupdate -i -a ; brew update && brew upgrade ; }
export PATH="$HOME/.local/bin:$PATH"

# apl
export PATH="$HOME/src/shakti/macos:$PATH"
export PATH="$HOME/src/kdb/download/m64:$PATH"
export QHOME=~/src/kdb/download/m64

# python
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"

# config
function editvimprofile { vim ~/.vimrc ; }

# shell
function lt () { ls -latrh "$@" ; }

# git
unalias gf gp gco gcm
gs () { git status "$@" }
gf () { git fetch "$@" }
gp () { git pull "$@" }
gco () { git checkout "$@" }
gbag () { git branch -a | grep "$@" }
gcm () { git commit -m "$@" }
gpo () { git push origin "$@" }
