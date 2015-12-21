source ~/dotfiles/zsh-antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle command-not-found
antigen bundle ubuntu
antigen bundle python
antigen bundle nvm
antigen bundle node
antigen bundle npm
antigen bundle colorize
antigen bundle colored-man-pages


# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme robbyrussell
antigen theme dogenpunk

# Tell antigen that you're done.
antigen apply

export NVM_DIR="/home/jg/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
