[ -f ~/.bashrc ] && . .bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# This will allow you to call executables installed by npm in your current directory
echo "export PATH=./node_modules/.bin:$PATH" >> ~/.bashrc


[[ -s /Users/mcreaser/.nvm/nvm.sh ]] && . /Users/mcreaser/.nvm/nvm.sh # This loads NVM
