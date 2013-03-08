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

