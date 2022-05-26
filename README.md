# dotfiles

# Apple Settings:
### Keyboards
*External Keyboard* 
Change modifiers:
- Option --> Command
- Command --> Option

*Internal Keyboard*
- Key Repeat: Slider at 100% fast
- Delay Until Repeater: Slider at 100% short
- Change "Press Globe (fn)" to "Do Nothing"

### Trackpad
- Disable "Look up & data detectors"
- Disable "Force Click and haptic feedback"
- Click = "Firm"
- Tracking Speed: Slider at about 33%
- Scroll & Zoom Disable "Zoom in or out"
- Scroll & Zoom Disable "Smart zoom"

### Mouse
- Both sliders at 100%
- Download [Scroll Reverser](https://github.com/pilotmoon/Scroll-Reverser)
	- Enable "Reverse Vertical"
	- Enable "Reverse Mouse"


### Battery
- Turn display off after: 15 min
- Disable "Optimize video streaming while on battery"

----

# Apple Store Things:
~~- Magnet, set magnet keyboard shorts~~
- Use [Rectangle](https://github.com/rxhanson/Rectangle) instead of Magnet
- `brew install --cask rectangle`  
- 1Password, scan QR code from phone
- Slack

# Apps from the web:
- Download Chrome through Safari.
- Chrome default browser, sync profiles after 1password set up
- Dropbox
- Discord
- Spotify
- [Scroll Reverser] (https://github.com/pilotmoon/Scroll-Reverser)
	
----

# Setting up Dev Environment:
1. Install Homebrew
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

2. `brew install git`

3. Set up Github

- `mkdir ~/workspace`
- add ~/workspace/.gitconfig_personal from dotfiles
- generate ssh key:  `ssh-keygen -t ed25519 -C "${PERSONAL_GITHUB_EMAIL}"`
- start ssh-agent:  `eval "$(ssh-agent -s)"`
- create ssh config: `vim ~/.ssh/config`
- add to ssh config:
```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```
- add the public key to github account
- if adding multiple git accounts, the .git-credentials file in each account repo (workspace, company_name, etc) is just one line:
`https://{{username}}:{{PAT}}@github.com`

4. Add .zshrc to user root

5. Python things
- Install `pyenv` build dependencies
- `brew install openssl readline sqlite3 xz zlib`
- Historically, I have installed pyenv from source. 
- Going to try through homebrew and see if things have improved
- `brew install pyenv`
- `pyenv install --list`
- `pyenv install $PYTHON_VERSION`
- so far so good...
- `brew install pyenv-virtualenv`
- maybe in the future `venv` will just be default?

6. JS things
- Installing Node Version Manager 
- Historically, I have also installed nvm from source.
- Going to try through Homebrew...
- `brew install nvm`
- `nvm ls-remote`
- `nvm install --lts` or preferred even numbered version
- Install yarn
- `npm install --global yarn`


# Setting up Dev Tools:
### PyCharm
- Load keymappings
  - Copy [keymaps](keymaps) dir to `~/Library/Application Support/Jetbrains/PyCharm`
- Add pyenv interpreter

Plugins:
- Key Promoter X
- AWS Toolkit

### VS Code

Plugins:
- Turbo Console Log by ChakrounAnas
- Prettier
- Auto Import - ES6, TS, JSX, TSX by steoates
- ES7 + React/Redux/React-Native Snippets by dsznajder

Could also pick up the Python and Docker plugins if desired.

Keyboard Shortcuts:
| Redo | command + Y |    
| Replace | command + R |  
| Toggle Line Comment | control + / |  
| View: Toggle Maximized Panel | command + ' |

### CLIs

- atom
  - Set atom as default app for most filetypes
- awscli
- aws-cdk
- csvkit
- ffmpeg
- jq
- telnet
- tree
- wget

`brew install atom awscli aws-cdk csvkit ffmpeg jq telnet tree wget`

