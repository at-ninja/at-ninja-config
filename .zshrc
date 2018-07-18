export ZSH=~/.oh-my-zsh
ZSH_THEME="agnoster-athomas"
plugins=(
  git osx yarn
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

export DEFAULT_USER="chattahippie"
export HOMEBREW_NO_ANALYTICS=1
export CLICOLOR=1

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

alias moo='fortune | cowsay -W 60'

export REACT_EDITOR=code

alias git=hub

eval $(thefuck --alias)