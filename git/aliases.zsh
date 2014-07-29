# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gds='git diff --staged'
alias gc='git commit -m '
alias ga="git add -A"
alias gnb="git checkout -b "
alias gra="git rebase --abort"
alias grc="git rebase --continue"
alias grs="git rebase --skip"
alias gca='git commit --amend'
alias gco='git checkout'
alias gb='git branch -v'
alias gu='git pull --prune'
alias gp='git push'
alias gpf='git push -f'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git rebase master"
alias grh="git reset --hard HEAD"
alias gr="git remote -v"
alias gm="git checkout master"
alias g-="git checkout -"

function gt() {
  git push -u origin $(git branch --no-color | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
}