dotfiles
========

```
cd
ln -s ~/dotfiles/.vimrc .vimrc
ln -s ~/dotfiles/.vim .vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git config --global core.excludesfile '~/.gitignore'

# in vim
:BundleInstall
```
