#!/bin/bash

echo "Starting bootstrap..."

echo $OSTYPE
if [ "$OSTYPE" = "linux-gnu" ]; then
    source ./linux.sh
elif [ "$OSTYPE" == "darwin"* ]; then
    source ./osx.sh
fi

# create dot-files symlinks 
ln -fs ~/cloud/confluent/dot-files/.bashrc ~/.bashrc
ln -fs ~/cloud/confluent/dot-files/.bash_profile ~/.bash_profile
#ln -fs ~/cloud/confluent/dot-files/.bash_logout ~/.bash_logout
#ln -fs ~/cloud/confluent/dot-files/.config ~/.config
ln -fs ~/cloud/confluent/dot-files/.gitconfig ~/.gitconfig
#ln -fs ~/cloud/confluent/dot-files/.gitignore_global ~/.gitignore_global 
#ln -fs ~/cloud/confluent/dot-files/.pip ~/.pip
#ln -fs ~/cloud/confluent/dot-files/.tmux ~/.tmux
#ln -fs ~/cloud/confluent/dot-files/.tmux.conf ~/.tmux.conf
#ln -fs ~/cloud/confluent/dot-files/.vim ~/.vim
ln -fs ~/cloud/confluent/dot-files/.vimrc ~/.vimrc

# set global git parameters
#git config --global core.excludesfile '~/.gitignore_global'

# Fetch tmux submodules
#git submodule init && git submodule update

# install tmux plugins (can be automated)
# <ctrl> + j + I

# Reload .bashrc
exec bash -l

echo "Bootstrapping complete"