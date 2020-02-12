#!/bin/bash

echo "Starting bootstrap..."

echo $OSTYPE
source ./bootstrap_osx.sh

if [ "$OSTYPE" = "linux-gnu" ]; then
    source ./bootstrap_linux.sh
elif [ "$OSTYPE" == "darwin"* ]; then
    source ./bootstrap_osx.sh
fi

# Install Python packages
PYTHON_PACKAGES=(
    ipython
    virtualenv
    virtualenvwrapper
)

echo "Installing Python packages..."
#sudo pip install ${PYTHON_PACKAGES[@]}



# create dot-files symlinks 
ln -fs ~/dot-files/.bashrc ~/.bashrc
ln -fs ~/dot-files/.bash_profile ~/.bash_profile
ln -fs ~/dot-files/.bash_logout ~/.bash_logout
ln -fs ~/dot-files/.config ~/.config
ln -fs ~/dot-files/.gitconfig ~/.gitconfig
ln -fs ~/dot-files/.gitignore_global ~/.gitignore_global 
ln -fs ~/dot-files/.pip ~/.pip
ln -fs ~/dot-files/.tmux ~/.tmux
ln -fs ~/dot-files/.tmux.conf ~/.tmux.conf
ln -fs ~/dot-files/.vim ~/.vim
ln -fs ~/dot-files/.vimrc ~/.vimrc

# set global git parameters
git config --global core.excludesfile '~/.gitignore_global' 

# Fetch tmux submodules
git submodule init && git submodule update

# install tmux plugins (can be automated)
# <ctrl> + j + I

# Reload .bashrc
exec bash -l

echo "Bootstrapping complete"