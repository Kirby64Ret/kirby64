#!/bin/bash

shopt -s globstar

if [ "$#" -ne "2" ];
then
    echo "usage: $0 old_name new_name"
    exit 1
fi



#echo "Replace $1 with $2?"
#read
git grep -rl "$1" unnamed_syms.txt src/ data/ asm/ include/ | xargs sed -i "s/\b$1\b/$2/g"
