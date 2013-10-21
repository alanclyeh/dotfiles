#!/bin/bash

function cp_to_home {
    local src_file="${1}"
    local file_name=${src_file##*/} 
    local dest_file=$HOME/.${file_name}
    if [ -f ${dest_file} ]; then 
        #echo "File ${dest_file} already exist, backup old file."
        cp ${dest_file} ${dest_file}.old 
    fi

    cp ${src_file} ${dest_file}
}

#
# Install required and suggested packages
#
sudo apt-get -y install git gitg vim astyle exuberant-ctags


#
# Copy doc files to home directory.
#
echo -ne "Copy dot files..."
cp_to_home vim/vimrc
cp_to_home bash/bashrc
cp_to_home git/gitconfig
echo -ne "\t\t[OK]\n"


#
# copy vim plugins and doc
#
echo -ne "Copy vim related fils..."
mkdir -p $HOME/.vim
cp -af vim/doc $HOME/.vim
cp -af vim/plugin $HOME/.vim
cp -af vim/colors $HOME/.vim
echo -ne "\t[OK]\n"


#
# Configure user name and email for git.
#
GIT_NAME=`git config --get user.name`
GIT_EMAIL=`git config --get user.email`

printf "%-50s" "Config user information for git..."
echo
# NOTE: Below checking is invalid, due to the script alwasy overwrite 
# ~/.gitconfig first.
if [ -z "$GIT_NAME" ]; then
    read -p ">> Please input your name for git: " git_user_name
    git config --global user.name "${git_user_name}"
fi
if [ -z "$GIT_EMAIL" ]; then
    read -p ">> Please input your email for git: " git_user_email
    git config --global user.email "${git_user_email}"
fi

# TODO: input only globa user.name and user.email not configed.
echo -ne "[OK]\n"

