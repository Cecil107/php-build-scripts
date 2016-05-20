#!/bin/bash
# ImagicalMine Installation Script for MacOS and Linux(master)
#  _    _            _    _______ 
# | |  | |    /\    | |  |__   __|
# | |__| |   /  \   | |     | |   
# |  __  |  / /\ \  | |     | |   
# | |  | | / ____ \ | |____ | | _ 
# |_|  |_|/_/    \_\|______||_|(_)
# 
# This file is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
# Before you start doing anything, read the license for more detail into what you are allowed to do and not do.
while :
do
clear
cat << "EOF"

  _                       _           _ __  __ _             
 (_)                     (_)         | |  \/  (_)            
  _ _ __ ___   __ _  __ _ _  ___ __ _| | \  / |_ _ __   ___  
 | | '_ ` _ \ / _` |/ _` | |/ __/ _` | | |\/| | | '_ \ / _ \ 
 | | | | | | | (_| | (_| | | (_| (_| | | |  | | | | | |  __/ 
 |_|_| |_| |_|\__,_|\__, |_|\___\__,_|_|_|  |_|_|_| |_|\___| 
                     __/ |                                   
                    |___/   
  
EOF

# shopt -s extglob
echo "system> Welcome to ImagicalMine!"
echo "system> This installer will guide you through installing ImagicalMine for your server!"
echo
echo "system> Select which PHP binary you want to install:"
echo "system>   1) MacOS x64(64-bit)"
echo "system>   2) Linux x64(64-bit)"
echo "system>   3) Exit ImagicalMine installation"
read -e -p "system> Number (e.g. 1): " a
read -e -p "system> Number (e.g. 1): " a </dev/tty
 case "$a" in 
	1 ) z="MacOS";;
	2 ) z="Linux";;
	3 ) exit 1;;
        * ) echo "error> An unexpected error occurred - either a 10 second timeout or an unknown selection. Restart the script, and then choose again."; exit 1;;
 esac
 
# if [ "$z" == "x" ];then
#	echo "error> An unexpected error occurred - either a 10 second timeout or an unknown selection. Restart the script, and then # choose again."
#	exit 1
#else
#        echo >> start.sh
#        cp -rf start.sh .. >>./$l 2>>./$le
#	fi
	echo "system> Downloading intsaller!"
if  [ "$z" == "MacOS" ];then
wget https://github.com/Cecil107/php-build-scripts/raw/master/MacOS64 >>./$wp 2>>./$wp
	chmod 777 MacOS64.sh >>./$lp 2>>./$lpe
	rm -r installer.sh >>./$lp 2>>./$lpe
	./MacOS64.sh >>./$lp 2>>./$lpe
elif [ "$z" == "Linux" ];then
wget https://github.com/Cecil107/php-build-scripts/blob/master/Linux64.sh >>./$wp 2>>./$wp
	chmod 777 Linux64.sh >>./$lp 2>>./$lpe
	rm -r installer.sh >>./$lp 2>>./$lpe
	./Linux64.sh >>./$lp 2>>./$lpe
fi
#        shopt -u extglob
# fi
rm -rf Installer.sh
exit 0
done
