#!/bin/bash

# ---------------◊ HEADER ◊--------------- #
#CREATOR
# Larissa/Mewmew <larcrist42@gmail.com>
#
#GAME
# The Bird
# ---------------------------------------- #


 # -------◊ VARIABLES ◊------- #
 # -------◊ LIBRARIES ◊------- #
 source module/core.sh  #principal lib
 # ---------◊ TESTS ◊--------- #



 # ------◊ START GAME ◊------- #
_PRINT "logo/logo.txt" || { echo "Logo not found!" ; exit 1 ;}

#Menu
while true; do
    inc='0'
    echo
    for printme in 'New Game' 'Load Game' 'Credits' 'Exit';
    do
        inc=$(($inc + 1))
        echo "[$inc]$printme"
    done
    read -p $'\n> ' choice

    case $choice in
        1) #Register new profile
            while true;
                do
                read -p "Digit your name: " user
                user="${user,,}" #small letter
                if [[ -z "${user}" ]];  ##[[ -z "${user}" ]] && { echo "Você precisa digitar um nome. ";}
                then
                    echo "Dear, you need to digit your name. "
                    continue
                else
                    break
                fi
            done;;
        2) echo ;;
        3) #Credits
            echo "@Mewmew"
         ;;
        4) exit 0 ;;
    esac
done;