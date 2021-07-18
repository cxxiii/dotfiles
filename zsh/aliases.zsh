#!/bin/zsh

# Util aliases
alias '?'='duck'
alias '??'='google'
alias aliases='${=EDITOR} ${ZDOTDIR:-$HOME}/aliases.zsh' # Quick access to the aliases.zsh file
alias coding="cd $PROJECTS_DIR"
alias dots="cd $DOTFILES"
alias grep='grep --color'
alias l='ls -1'
alias ll='ls -la'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias x="exit" # Exit Terminal
alias zshrc='${=EDITOR} ${ZDOTDIR:-$HOME}/.zshrc' # Quick access to the .zshrc file

# Git aliases
alias g="git"
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gbD='git branch -D'
alias gbda='git branch --no-color --merged | command grep -vE "^(\+|\*|\s*($(git_main_branch)|development|develop|devel|dev)\s*$)" | command xargs -n 1 git branch -d'
alias gbl='git blame -b -w'
alias gbr='git branch --remote'
alias gc="git commit"
alias gc='git commit -v'
alias gcb="git checkout -b"
alias gcb='git checkout -b'
alias gcd="git checkout development"
alias gcl='git clone --recurse-submodules'
alias gcm='git checkout $(git_main_branch)'
alias gco="git checkout"
alias gd="git diff"
alias gd='git diff'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gfo='git fetch origin'
alias gl='git pull'
alias glum='git pull upstream $(git_main_branch)'
alias gm='git merge'
alias gma='git merge --abort'
alias gmom='git merge origin/$(git_main_branch)'
alias gp='git push'
alias gpristine='git reset --hard && git clean -dffx'
alias grbi='git rebase -i'
alias grbm='git rebase $(git_main_branch)'
alias grhh='git reset --hard'
alias groh='git reset origin/$(git_current_branch) --hard'
alias gss="git status -s"
alias gst="git status"
alias gstp="git stash pop"
alias gsts="git stash show -p"
