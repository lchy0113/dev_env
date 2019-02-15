#/bin/dash

##########################################################
# install terminator Script.
# 18/03/05
##########################################################

echo "*********************************************************"
echo "* Install Package  "
echo "*********************************************************"

sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update

sudo apt-get install terminator

sudo apt-get install xfonts-terminus console-terminus
echo "*********************************************************"
echo " Complete. "
echo "*********************************************************"

