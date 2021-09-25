# brew
eval $(/usr/local/bin/brew shellenv)

# python
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"
