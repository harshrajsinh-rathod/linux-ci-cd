#!/bin/bash

function way {
    files=3
    read -r -p "How many files do you think exist in this repo?" guess
    if [[ $files == "$guess" ]]
    then
        echo "Congratulations! Repo does have $files files."
    fi
            # echo "$n*'way'"
    # if [[ $guess -gt 2*n ]]
    # then10

    while [[ $files -ne "$guess" ]]
    do
        list=()
        n=$(( "$guess" / "$files" ))
        if [[ n -lt 1 ]]
        then
            list+=("little")
            read -r -p "Guess ${list[*]} higher! Not the correct count of files. Try again! How many?" guess
        else
            for((i = 1; i < "$n"; ++i)) 
            do
                list+=("way")
            done
            read -r -p "Guess ${list[*]} lower! Not the correct count of files. Try again! How many?" guess
        fi

    if [[ $files == "$guess" ]]
    then
        echo "Congratulations! Repo does have $files files."
    fi

    done
}
way


