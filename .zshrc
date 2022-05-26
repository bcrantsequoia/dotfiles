function precmd() {
        echo
}

PROMPT='
%B%F{green}%n%f%b %F{blue}%~ $%f '

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

export PATH=/usr/local/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Loads nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm

alias rmds='find . -name ".DS_Store" -delete'

alias gs='git status'
alias gb='git branch -vv'
alias gl='git log --pretty=format:"%C(yellow)%h %C(blue)%ad%C(red)%d %C(reset)%s%C(green) [%cn]" --decorate --date=short'

HISTFILE=~/.zsh_history
HISTSIZE=999999
HISTFILESIZE=999999
SAVEHIST=999999
setopt INC_APPEND_HISTORY

# Respect .nvmrc in path.
if [[ $TERM_PROGRAM = vscode ]]; then
	autoload -U add-zsh-hook
	load-nvmrc() {
  	local node_version="$(nvm version)"
  	local nvmrc_path="$(nvm_find_nvmrc)"

 	if [ -n "$nvmrc_path" ]; then
    	local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    	if [ "$nvmrc_node_version" = "N/A" ]; then
      	nvm install
    	elif [ "$nvmrc_node_version" != "$node_version" ]; then
      	nvm use
    	fi
  	elif [ "$node_version" != "$(nvm version default)" ]; then
    	echo "Reverting to nvm default version"
    	nvm use default
  	fi
	}
	# add-zsh-hook chpwd load-nvmrc
	load-nvmrc
fi

# Respect .python-version in path. Show in terminal.
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

