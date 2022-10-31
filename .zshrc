export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="spaceship"

# Plugins
plugins=(
  git
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Spaceship config
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_PREFIX="["
SPACESHIP_TIME_SUFFIX="] "

SPACESHIP_GCLOUD_SHOW=false
SPACESHIP_AWS_SHOW=false

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Color folders and files
export LS_COLORS='no=00:fi=00:di=01;32:ln=36:pi=33:so=01;35:bd=01;33:cd=01;33:ex=01;31'

# Basic
alias s="cd .."
alias c="clear"

# Git
alias gpfl="git push --force-with-lease"
gmo() {
  git fetch origin
  git merge "origin/$1"
}
gro() {
  git fetch origin
  git rebase "origin/$1"
}
grio () {
        git fetch origin
        git rebase -i --update-refs "origin/$1"
}
alias gbl="git for-each-ref --sort='committerdate' --format='%(committerdate:short)%09%(refname:short)' refs/heads/"
alias tmp="git add . && git commit -m 'tmp' -n"

# Other utils
time_ms() {
  ts=$(date +%s%N)
  $@
  echo "$((($(date +%s%N) - $ts)/1000000))ms"
}
