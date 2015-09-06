##Install note to self
```
cd
ln -s ~/dotfiles/.vimrc .vimrc
ln -s ~/dotfiles/.vim .vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git config --global core.excludesfile '~/.gitignore'

# in vim
:PlugInstall
```

##Other notes to self

###Instead of grep use Ag
```
:Ag someString
```
Quickfix window shows results
Reopen quickfix by ":cope"


