
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:~/bin:~/Development/adt-bundle-mac-x86_64-20130219/sdk/tools:~/Development/adt-bundle-mac-x86_64-20130219/sdk/platform-tools:$PATH"

# postgres
alias spostgres='postgres -D /usr/local/var/postgres'

# git
alias gb='git branch'
alias gs='git status'

# NOTE: replaced with emojiCommit 'gcm' and 'gcam' functions
#alias gcm='git commit -m'
#alias gcam='git commit -a -m'

alias ga='git add'
alias gp='git push'
alias gpl='git pull'
alias gco='git checkout'
alias gl='git log'
alias gf='git fetch'
alias grp='git remote prune'
alias gd='git diff'
alias gbd='git branch -d'
alias gcom='git checkout master'

# sublime
alias e='subl . &'

# moovweb
alias smooveweb='sudo moov server --auto-hosts'

# git bash autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# source Git Remove Merge Branches
. ~/.bash_profile_includes/rmb.sh
. ~/.bash_profile_includes/emojiCommit.sh
