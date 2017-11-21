#!/usr/bin/env bash

# check git is installed
command -v git >/dev/null 2>&1 || { echo "Aborting: git is not installed." >&2; exit 1; }


# install build prerequisities 
# https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites
sudo apt-get update
sudo apt-get install -y libtool libtool-bin autoconf automake cmake g++ pkg-config unzip


# download neovim
if git clone https://github.com/neovim/neovim.git $HOME/Downloads/neovim; then
	echo "Git cloned successfully"
else
	cd $HOME/Downloads/neovim && git pull
fi

# build neovim
cd $HOME/Downloads/neovim
git checkout v0.2.1
make distclean && make

# install neovim
sudo make install


# other dependencies
# allows system clipboard integration
sudo apt-get install xsel

# install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

