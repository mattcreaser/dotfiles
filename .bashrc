export PATH=$PATH:/Users/mcreaser/code/platform/node_modules/.bin
export PATH=$PATH:/Users/mcreaser/bin
export PATH=/usr/local/bin:$PATH
export PATH=/user/local/opt/ruby/bin:$PATH
export PATH=./node_modules/.bin:$PATH
export PATH=$PATH:/usr/local/Cellar/rabbitmq/3.0.4/sbin/

function _update_ps1() {
   export PS1="$(~/powerline-shell.py $?)"
 }
export PROMPT_COMMAND="_update_ps1"



# Enable color support of ls
if [ `uname` == 'Darwin' ]; then
    export CLICOLOR=1
    if [ -x /usr/local/bin/gls ]; then
        # brew install coreutils to get gls
        alias ls='/usr/local/bin/gls --color=auto'
    fi
else
    alias ls='ls --color=auto'
fi

# Alias definitions are in a separate file.
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

. ~/.bash_git_cmd

# Add homebrew path for python
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Allow more open files for those huge npm installs
ulimit -n 1024
