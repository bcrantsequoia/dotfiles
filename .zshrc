#
# Stylize Terminal
#
function precmd() {
        echo
}
PROMPT="
%B%F{green}%n%f%b %F{blue}%~ $%f "

#
# Modify $PATH
#
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
export PATH="$HOME/.yarn/bin:$PATH"

#
# Aliases
#
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias gb="git branch -vv"
alias gl='git log \
	--pretty=format:"%C(yellow)%h %C(blue)%ad%C(red)%d %C(reset)%s%C(green) [%cn]" \
	--decorate \
	--date=short'
alias gr="git reset --soft HEAD~1"
alias gs="git status"
alias k="kubectl"
alias lsa="ls -la --color"
alias lsd='ls -la --color | grep "^d"'
alias loadenv='export $(grep -v "^#" .env | xargs)'
alias lscpu="sysctl -a | grep cpu | grep hw"
alias nproc="sysctl -n hw.physicalcpu"
alias rmds='find . -name ".DS_Store" -delete'

#
# Configure History
#
HISTFILE=~/.zsh_history
HISTSIZE=999999
HISTFILESIZE=999999
SAVEHIST=999999
setopt INC_APPEND_HISTORY

# Respect .python-version in path. Show in terminal.
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"