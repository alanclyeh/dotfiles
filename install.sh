#!/bin/bash

function cp_to_home {
    local src_file="${1}"
    local file_name=${src_file##*/} 
    local dest_file=$HOME/.${file_name}
    if [ -f ${dest_file} ]; then 
        echo "File ${dest_file} already exist, backup old file."
        cp ${dest_file} ${dest_file}.old 
    fi

    cp ${src_file} ${dest_file}
}


#
# Copy vimrc
#
cp_to_home vim/vimrc
cp_to_home bash/bashrc
cp_to_home git/gitconfig

