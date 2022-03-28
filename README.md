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
- Magnet, set magnet keyboard shorts
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
- pyenv

6. JS things
- nvm

7. Ruby things
- rbenv

# Setting up Dev Tools:
### IDEs
- Atom
- Docker
- PyCharm
- VS Code

### CLIs
- awscli
- awscdk
- csvkit
- ffmpeg
- jq
- telnet
- tree
- wget

