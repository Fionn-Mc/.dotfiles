set -e

echo "this command must be run from the directory it is in"

ln -s ./vimrc ~/.vimrc
ln -s ./tmux.conf ~/.tmux.conf 


echo "packages to download: fzf, bat, tig, rg"
