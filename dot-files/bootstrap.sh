#!/bin/bash

echo "Starting bootstrap..."

echo $OSTYPE
if [ "$OSTYPE" = "linux-gnu" ]; then
    source ./linux.sh
elif [ "$OSTYPE" == "darwin"* ]; then
    source ./osx.sh
fi

# create dot-files symlinks
ln -fs ~/cloud/dot-files/.bashrc ~/.bashrc
echo ".bashrc symlink created"
ln -fs ~/cloud/dot-files/.bash_profile ~/.bash_profile
echo ".bash_profile symlink created"
ln -fs ~/cloud/dot-files/.bash_logout ~/.bash_logout
echo ".bash_logout symlink created"
ln -fs ~/cloud/dot-files/.gitconfig ~/.gitconfig
echo ".gitconfig symlink created"
ln -fs ~/cloud/dot-files/.gitignore_global ~/.gitignore_global
echo ".gitignore_global symlink created"
#ln -fs ~/cloud/dot-files/.pip ~/.pip
#ln -fs ~/cloud/dot-files/.tmux ~/.tmux
#ln -fs ~/cloud/dot-files/.tmux.conf ~/.tmux.conf
ln -fs ~/cloud/dot-files/.vim ~/.vim
echo ".vim symlink created"
ln -fs ~/cloud/dot-files/.vimrc ~/.vimrc
echo ".vimrc symlink created"

# set global git parameters
#git config --global core.excludesfile '~/.gitignore_global'

# Fetch tmux submodules
# git submodule init && git submodule update

# install tmux plugins (can be automated)
# <ctrl> + j + I

# Reload .bashrc
exec bash -l

echo "Bootstrapping complete"

exit 0