#!/bin/bash
echo "system> Welcome to ImagicalMine!"
echo "system> Select your os:"
echo "system>   1) Linux x64(64-bit)"
echo "system>   2) MacOS x64(64-bit)"
echo "system>   3) Exit"
read -e -p "system> Number (e.g. 1): " a
read -e -p "system> Number (e.g. 1): " a </dev/tty
 case "$a" in 
	1 ) z="Linux";;
	2 ) z="MacOS";;
	3 ) exit 1;;
        * ) echo "error> An unexpected error occurred - either a 10 second timeout or an unknown selection. Restart the script, and then choose again."; exit 1;;
 esac
 if [ "$z" == "Linux" ];then
 wget https://raw.githubusercontent.com/Cecil107/php-build-scripts/master/Linux64.sh >>./$wp 2>>./$wp
        chmod 777 Linux64.sh >>./$lp 2>>./$lpe
        rm -rf install.sh >>./$lp 2>>./$lpe
        ./Linux.sh >>./$lp 2>>./$lpe
        exit 1>>./$lp 2>>./$lpe
 else
  if [ "$z" == "MacOS" ];then
  wget https://raw.githubusercontent.com/Cecil107/php-build-scripts/master/MacOS64.sh >>./$wp 2>>./$wp
        chmod 777 MacOS64.sh >>./$lp 2>>./$lpe
        rm -rf install.sh >>./$lp 2>>./$lpe
        ./MacOS64.sh >>./$lp 2>>./$lpe
        exit 1>>./$lp 2>>./$lpe
        fi
exit 0
done
