#!/bin/bash

counter(){
    for file in "$1"/*
    do
    if [ -d "$file" ]
    then
            echo "python img4web.py -s $file -d $file"
            python img4web.py -s $file -d $file
            counter $file
    fi

    done
}
counter "$1"