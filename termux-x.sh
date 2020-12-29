#!/data/data/com.termux/files/usr/bin/bash

#=================================================
#simple bash script writen by Andrei Abd | CoderX
#report: usr.g0a1@gmail.com
#=================================================

#set colored=true to turn on colored error messages
#set colored=false to turn off colored error messages
colored=true

#red=1 green=2 yellow=3
color () {
        if [ $colored == "true" ]; then
                echo "$(tput setaf $1)${*:2}$(tput sgr0)"
        else
                echo "${*:2}"
        fi
}

logo () {
clear
echo " "
echo "`color 7  ▀▀█▀▀ █▀▀ █▀▀█ █▀▄▀█ █░░█ █░█   █░█`"
echo "`color 7  ░░█░░ █▀▀ █▄▄▀ █░▀░█ █░░█ ▄▀▄   ▄▀▄`"
echo "`color 7  ░░▀░░ ▀▀▀ ▀░▀▀ ▀░░░▀ ░▀▀▀ ▀░▀   ▀░▀`"
echo " "
}

help_list () {
clear
echo " "
echo "`color 7 █▀▀ █▀█ █▀▄ █▀▀ █▀█ ▀▄▀`"
echo "`color 7 █▄▄ █▄█ █▄▀ ██▄ █▀▄ █░█`"
echo " "
echo "`color 7 [*] Introduction:`"
echo "     Auto Termux Tool, Simple bash script writen by Andrei Abd | CoderX"
echo "     this tool can give you auto and full update and upgrade termux shell"
echo "     with simple run."
echo " "
echo "`color 7 [*] Usage:`"
echo "     Just run script after change mode using 755 code, bash or sh or ./ ,"
echo "     hope you finde what you need !!!"
echo " "
echo "`color 7 [*] Contact:`"
echo "     for more information can mail by adress : usr.g0a1@gmail.com"
echo " "
}

$1
if [ $1 = "--help" ]
then
help_list
echo " "
read -p "`color 2 [!] Do you want to run Termux-X ?` y/n: " ansr2

	if [ $ansr2 = 'y' ]
	then
		./termux-x.sh
	elif [ $ansr2 = 'n' ]
	then
		logo
		echo " "
		echo "`color 3 [!] Exit Termux-X`"
		echo " "
		sleep 3
		exit
	else
		logo
                echo "`color 9 [!] Please select correct string to contineu ...`"
                sleep 3
                ./termux-x.sh --help
	fi

fi

main_list () {
logo
echo " [*] Main List:"
echo " "
echo "    [`color 2 1`] Termux automate all commands."
echo "    [`color 2 2`] Termux packages standart options."
echo "    [`color 2 3`] Termux packages repositories."
echo "    [`color 2 4`] Termux Sudo."
echo " "
echo " [*] Other options:"
echo " "
echo "    [`color 2 5`] Help"
echo "    [`color 2 6`] Exit"
echo " "
echo " `color 3 [+] Reprot:` usr.g0a1@gmail.com"
echo " `color 3 [+] Source:` https://github.com/AndreiAbd/tremuxX"
echo " "
read -p "`color 2 [+] Please Select number and press enter to contineu: `" listnum0


if [ $listnum0 = 1 ]
then
	logo
	echo "`color 7 [*] Automate all Termux packages command:`"
	read -p "`color 2 [?] Do you want to contineu ?` y/n: " ansr1
	if [ $ansr1 = 'y' ]
	then
		echo "`color 2 [+] Run clean packages ....`"
		echo ""
		pkg clean
		echo "`color 2 [*] Done`"
		echo " [+] Run autoclean all packages ...."
		echo ""
		pkg autoclean
		echo ""
		echo  "`color 2 [+] Run update all packages ....`"
		echo ""
		pkg update
		echo ""
		echo  "`color 2 [+] Run upgrade all packages`"
		echo ""
		pkg upgrade -y
		echo ""
		echo  "`color 2 [+] Run clean apt ....`"
		echo ""
		apt clean
		echo "[*] Done"
		echo  "`color 2 [+] Run auto clean apt ....`"
		echo ""
		apt autoclean
		echo ""
		echo  "`color 2 [+] Run update apt ....`"
		echo ""
		apt update
		echo ""
		echo  "`color 2 [+] Run upgrade apt ....`"
		echo ""
		apt upgrade -y
		echo " "
		logo
		echo  "`color 2 [!] All Done ....`"
		echo  "`color 2 [*] Sucsses all update and upgrade Termux !!! `"
		sleep 3
		main_list
	elif [ $ansr1 = 'n' ]
	then
		clear
		main_list
	else
		logo
        	echo  "`color 9 [!] Please select correct string to contineu ...`"
        	sleep 3
        	main_list
	fi

elif [ $listnum0 = 2 ]
then
	list_one

elif [ $listnum0 = 3 ]
then
	list_two

elif [ $listnum0 = 4 ]
then
	list_three

elif [ $listnum0 = 5 ]
then
	help_list
	echo " "
	read -p "`color 2 [!] Press enter to back into Main list ...`"
	main_list

elif [ $listnum0 = 6 ]
then
	logo
	echo "`color 3  [!] Exit Termux X ...`"
	sleep 1
	exit

else
	logo
	echo "`color 9 [!] Please select correct number from Main List ...`"
	sleep 2
	main_list
fi
}

list_one () {
logo
echo "`color 7 [*] Termux packages standert options:`"
echo " "
echo "    [`color 2 0`] Back into Main List."
echo " "
echo "    [`color 2 1`] Refresh packages"
echo "    [`color 2 2`] Update packages"
echo "    [`color 2 3`] Upgrade packages"
echo "    [`color 2 4`] Clean packages"
echo " "
read -p "`color 2 [+] Please Select number and press enter to contineu:` " listnum1

if [ $listnum1 = 0 ]
then
	main_list

elif [ $listnum1 = 1 ]
then
	logo
	echo "`color 2 [*] Restor root repositories:`"
	pkg install root-repo
	echo " "
	echo " `color 2 [*] Restor unstable repositories:`"
	pkg install unstable-repo
	echo " "
	echo "`color 2 [*] Restor x11 repositories:`"
	pkg install x11-repo
	echo " "
	echo "`color 2 [!] Done ...`"
	sleep 2
	list_one

elif [ $listnum1 = 2 ]
then
	logo
	echo "`color 7 [*] Update Termux packages:`"
	pkg update
	echo " "
	echo "`color 2 [!] Done ...`"
	sleep 3
	list_one

elif [ $listnum1 = 3 ]
then
	logo
	echo " [*] Upgrade Termux packages:"
	pkg upgrade -y
	echo " "
	echo "`color 2 [!] Done ...`"
	sleep 3
	list_one

elif [ $listnum1 = 4 ]
then
        logo
        echo " [*] Clean Termux packages:"
        pkg clean && pkg autoclean
        echo " "
        echo "`color 2 [!] Done ...`"
        sleep 3
        list_one

else
        logo
        echo "`color 9 [!] Please select correct number from Main List ...`"
        sleep 3
        list_one
fi
}

list_two () {
logo
echo " [*] Termux packages repositories:"
echo " "
echo "    [`color 2 0`] Back into Main List."
echo " "
echo "    [`color 2 1`] List all packages."
echo "    [`color 2 2`] List all installed packages."
echo "    [`color 2 3`] Save installed packages into text file."
echo "    [`color 2 4`] Find packages by name."
echo "    [`color 2 5`] Install packages by name."
echo "    [`color 2 6`] Uninstall packages by name"
echo " "
read -p "`color 2 [+] Please Select number and press enter to contineu:` " listnum2

if [ $listnum2 = 0 ]
	then
	main_list
elif [ $listnum2 = 1 ]
	then
	logo
	echo " [*] List all installed packages."
	echo ""
	pkg list-all
	echo ""
	read -p "`color 2 [+] Press enter to back into Main List ...` "
	main_list
elif [ $listnum2 = 2 ]
        then
        logo
        echo " [*] List all installed packages."
        echo ""
        pkg list-installed | cut -d"/" -f1
	echo ""
	read -p "`color 2 [+] Press enter to back into Main List ...` "
        main_list
elif [ $listnum2 = 3 ]
        then
        logo
        echo " [*] Save all installed packages into INSTALLED-PKG.txt ."
        echo " "
        pkg list-installed | cut -d"/" -f1 > INSTALLED-PKG.txt
	echo " "
	read -p "`color 2 [+] Press enter to back into Main List ...` "
        main_list
elif [ $listnum2 = 4 ]
        then
        logo
        echo " [*] Find packages by name."
        echo ""
	read -p "`color 2 [+] Please write name package to run search:` " pkgname1
        pkg search $pkgname1
        echo ""
        main_list
elif [ $listnum2 = 5 ]
        then
        logo
        echo " [*] Install package by name."
        echo ""
        read -p "`color 2 [+] Please write name package to run search:` " pkgname2
        pkg install $pkgname2
        echo ""
        main_list
elif [ $listnum2 = 6 ]
        then
        logo
       	echo " [*] Uninstall package by name."
       	echo ""
       	read -p "`color 2 [+] Please write name package to run search:` " pkgname3
       	pkg uninstall $pkgname3
       	echo ""
       	main_list
else
        logo
        echo "`color 9 [!] Please select correct number from Main List ...`"
        sleep 3
        list_one
fi
}

list_three () {
logo
echo " [*] Termux Sudo:"
echo " "
echo "    [`color 2 0`] Back into Main List."
echo " "
echo "    [`color 2 1`] Install Ncurses Utils."
echo "    [`color 2 2`] Copy sudo fils into sys."
echo " "
read -p "`color 2 [+] Please Select number and press enter to contineu:` " listnum3

if [ $listnum3 = 0 ]
then
	main_list
elif [ $listnum3 = 1 ]
then
	pkg install ncurses-utils
elif [ $listnum3 = 2 ]
then
	cat sudo > /data/data/com.termux/files/usr/bin/sudo
	chmod 700 /data/data/com.termux/files/usr/bin/sudo
else
        logo
        echo "`color 9 [!] Please select correct number from Main List ...`"
        sleep 3
        list_one
fi
}
main_list
