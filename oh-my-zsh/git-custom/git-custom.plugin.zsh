alias glp='git --no-pager log --graph --pretty=tformat:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset [%an]" --abbrev-commit --date=short -20'
compdef _git glp=git-log
alias glpa='git --no-pager log --graph --pretty=tformat:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset [%an]" --abbrev-commit --date=short -20 --all'
compdef _git glpa=git-log
