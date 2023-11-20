#!/bin/bash

##########################################################
# install terminator Script.
# 18/03/05 : initial code
# 23/11/20 : add terminator config 
##########################################################

echo "*********************************************************"
echo "* Install Package  "
echo "*********************************************************"

sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update

sudo apt-get install terminator

sudo apt-get install xfonts-terminus console-terminus

echo "*********************************************************"
echo "* Update terminator config  "
echo "*********************************************************"

TERMINATOR_CONF_PATH=$HOME/.config/terminator
TERMINATOR_CONF_FILE=$TERMINATOR_CONF_PATH/config

if [ -d $TERMINATOR_CONF_PATH ]
then
	echo "Directory $TERMINATOR_CONF_PATH exists."
else
	echo "Directory $TERMINATOR_CONF_PATH does not exists."
	mkdir -p $TERMINATOR_CONF_PATH
	echo "so created that..."
fi

ln -Tfs $PWD/terminator_config $TERMINATOR_CONF_FILE
echo "update terminator config."

echo "*********************************************************"
echo " Complete. "
echo "*********************************************************"

