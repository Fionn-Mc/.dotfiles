# set -e

echo "this command must be run from the directory it is in"

ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf 
ln -s ~/dotfiles/bash_aliases ~/.bash_aliases 


echo "packages to download: fzf, bat, tig, rg"
