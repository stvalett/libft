#!/bin/bash
display_menu() {
	echo       "$(tput setaf 1)####################################"
	echo       "#                                  #"
	echo       "#                                  #"
	echo       "#                                  #"
	echo       "#           WEL$(tput setaf 3)COME                #"
	echo       "#                                  #"
	echo       "#                                  #"
	echo       "#                                  #"
	echo       "#################################### $(tput sgr 0)"
	echo
	echo "Choose your option
1) libft.a
2) Compiled
3) Makefile
4) Quit"
	echo
}
sucess() {
	echo "$(tput setaf 5)========================================100% $(tput sgr 0)"
	echo
	echo        "$(tput setaf 1)************"
	echo -e     "*  SUCESS  *"
	echo        "************ $(tput sgr 0)"
	echo
}
display_remove_files_o() {
	echo
	echo -n "Do You Want to Remove all Files *.o ? Y/n : "
	read a
	if [ "$a" = "y" ] || [ "$a" = "Y" ]; then
		rm *.o
		echo "$(tput setaf 5)========================================100% $(tput sgr 0)"
		echo
		echo "All files *.o are REMOVED"
		echo
		restart_menu
	elif [ "$a" = "n" ] || [ "$a" = "N" ]; then
		restart_menu
	else
		display_byebye
	fi
}
display_finish() {
	echo
	echo "$(tput setaf 1)#############"
	echo "#           #"
	echo "#   FIN$(tput setaf 3)ISH  #"
	echo "############# $(tput sgr 0)"
	valide='q'
}
display_byebye() {
	echo "$(tput setaf 1)#################"
	echo "#               #"
	echo "#    BYE$(tput setaf 3) BYE    #"
	echo "################# $(tput sgr 0)"
	valide='q'
}
step_compilation_first() {
	echo "START COMPILATION ! "
	echo
	echo "$(tput setaf 5)========================================100% $(tput sgr 0)"
	echo
	echo "SUCESS COMPILE"
	gcc -Wall -Wextra -Werror main.c -L. -lft
	echo
}
step_compilation_second() {
	echo -n " execute or not  Y/n  ? : "
	read yn
	if [ "$yn" = "Y" ] || [ "$yn" = "y" ]; then
		echo
		echo "==============================="
		echo "==============\/==============="
		echo
		./a.out | cat -e
		echo
		echo "==============/\==============="
		echo "==============================="
		echo
		echo "$(tput setaf 5)========================================100% $(tput sgr 0)"
		echo
	elif [ "$yn" = "N" ] || [ "$yn" = "n" ]; then
		clear
		sleep 0.5
		step_compilation_restart
	else
		display_finish
		sleep 1
		clear
		exit 0;
	fi
}
step_compilation_remove() {
	echo -n "remove executable  Y/n ? : "
	read a
	if [ "$a" = "Y" ] || [ "$a" = "y" ]; then
		echo
		echo "./a.out = REMOVED"
		rm ./a.out
		echo
		echo "$(tput setaf 5)========================================100% $(tput sgr 0)"
		echo
	fi
}
step_compilation_restart() {
	echo -n "Re compiled or not  Y/n ? : "
	read rqq
	if [ "$rqq" = "y" ] || [ "$rqq" = "Y" ]; then
		clear
		valide="r"
		step_compilation_first
		step_compilation_second
		step_compilation_remove
		step_compilation_restart
	elif [ "$rqq" = "n" ] || [ "$rqq" = "N" ]; then
		clear
		main
	else
		display_byebye
		sleep 1
		clear
		exit 0
	fi
}
restart_menu() {
	echo
	echo -n "Return to menu  Y/n ? : "
	read rq
	if [ "$rq" = "Y" ] || [ "$rq" = "y" ]; then
		clear
		valide="r"
	else
		display_byebye
		sleep 1
		clear
		exit 0
	fi
}
first_libft() {
	clear
	echo "FIRST STEP LIBFT :  gcc -c *.c "
	gcc -c *.c
	sucess
	sleep 2
	echo "SECOND STEP LIBFT : ar rc libft.a *.o"
	ar rc libft.a *.o
	sucess
	sleep 2
	echo "FINAL STEP LIBFT : randlib libft.a *.o"
	ranlib libft.a
	sucess
	display_remove_files_o
}
display_makefile() {
	echo "Option MakeFile
	1) Make
	2) Make Clean
	3) Make Fclean
	4) Return Menu
	5) Quit"
}
return_makefile() {
	echo "Back to Makefile Y/n ? : "
	read c
	if [ "$c" = "y" ] || [ "$c" = "Y" ]; then
		clear
		sleep 0.5
		display_makefile
		makefile
	elif [ "$c" = "N" ] || [ "$c" = "n" ]; then
		restart_menu
	else
		display_byebye
		clear
	fi
}
makefile() {
	read b
	if [ "$b" = "1" ]; then
		clear
		sleep 0.5
		echo " Make "
		make
		sleep 0.5
		sucess
		echo
		return_makefile
	elif [ "$b" = "2" ]; then
		clear
		sleep 0.5
		echo "Make Clean"
		echo
		make clean
		sleep 0.5
		sucess
		echo
		return_makefile
	elif [ "$b" = "3" ]; then
		clear
		sleep 0.5
		echo "Make Fclean"
		echo
		make fclean
		sleep 0.5
		sucess
		echo
		return_makefile
	elif [ "$b" = "4" ]; then
		restart_menu
	else
		clear
		display_byebye
		sleep 0.7
		clear
		exit 0
	fi
}
option() {
	read a
	if [ "$a" = "1" ]; then
		first_libft
	elif [ "$a" = "2" ]; then
		step_compilation_first
		step_compilation_second
		step_compilation_remove
		step_compilation_restart
	elif [ "$a" = "3" ]; then
		clear
		display_makefile
		makefile
	elif [ "$a" = "4" ]; then
		display_finish
		clear
		exit 0
	else
		clear
		echo "!!!! ERROR !!!! option invalide !! "
		sleep 2
		clear
	fi
}
valide="r"
function main {
while [ "$valide" = "r" ]; do
	display_menu
	option
done
																																																																																																																																																																																										}
																																																																																																																																																																																										main

