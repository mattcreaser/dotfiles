# Switch immediately to the home directory for all the repos.
alias code="cd ~/code"

# Shorcut for pulling from git origin
alias gpr="git pull --rebase"

# Shortcut to delete branches that have already been merged to current branch
alias gdm="git branch --merged | grep -v \" master\" | grep -v \"\\* \" | xargs -n 1 git branch -d"

# Shortcut for locating files
alias f="find . | grep"

# Alias ack so that it never looks in node_modules (SLOW)
alias ack="ack --ignore-dir=node_modules"

# Use Python3 instead of python2
alias python="python3"
