# source ~/dotfiles/zsh-antigen/antigen.zsh
source /usr/local/share/antigen/antigen.zsh
# Load the oh-my-zsh's library.
# antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
# antigen bundle heroku
antigen bundle pip
antigen bundle command-not-found
antigen bundle python
antigen bundle nvm
antigen bundle node
antigen bundle npm
antigen bundle colorize
antigen bundle colored-man-pages
# antigen bundle edouard-lopez/yeoman-zsh-plugin
antigen bundle bower
antigen bundle gulp
antigen bundle z
antigen bundle thefuck

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme robbyrussell
# antigen theme dogenpunk
# antigen theme minimal
# antigen theme agnoster
antigen theme agnoster

# Tell antigen that you're done.
antigen apply


# export NVM_DIR="/home/jg/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# export NODE_PATH=$NODE_PATH:`npm root -g`
 
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# fix for not remembering ssh passphrases
# eval `gnome-keyring-daemon --start`
# export WORKON_HOME=/home/jg/.virtualenvs
# source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
# export PIP_VIRTUALENV_BASE=/home/jg/.virtualenvs
# alias xclip="xclip -selection c"
# source ~/.profile
