#!/bin/bash
#./genDb.sh `pwd`
#export CSCOPE_EDITOR=`which vim`

if [ "$1" = "log" ]; then
	git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
	exit
fi

CSCOPE_FILE=cscope.out
if [ -n "$1" ]; then
	echo "Source code directory: " $1
	echo "Create file map : " $CSCOPE_FILE
	find $1 -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.java" -o -name "*.aidl" -o -name "*.mk" > $CSCOPE_FILE
	#cscope -bkq -i $CSCOPE_FILE
	cscope -bRq -i $CSCOPE_FILE
	# cscope -Rbkq
	ctags -R --exclude=.git
else
	echo "Please key-in path of project"
fi 
