#/bin/dash

##########################################################
# vim configuration Script.
# 19/05/08
##########################################################

echo "*********************************************************"
echo "* Install Package  "
echo "*********************************************************"
sudo apt-get install vim -y
sudo apt-get install git -y
sudo apt-get install ctags -y
sudo apt-get install cscope -y

echo "*********************************************************"
echo "* Create Directory  "
echo "*********************************************************"
mkdir -p ~/.vim/bundle

echo "*********************************************************"
echo "* Plugin Manager Download(vundle) "
echo "*********************************************************"
git clone git@gitlab.com:RICHGOLD/VIM_Vundle.git ~/.vim/bundle/Vundle.vim

echo "*********************************************************"
echo " Copy the .vimrc file "
echo "*********************************************************"
cp .vimrc ~/.vimrc


echo "*********************************************************"
echo " Input command : BundleInstall "
echo "*********************************************************"
vi -u ~/.vimrc +BundleInstall +qall

echo "*********************************************************"
echo " Install Plunin mark.vim  "
echo "*********************************************************"
mkdir -p ~/.vim/plugin/
cp mark.vim ~/.vim/plugin/

echo "*********************************************************"
echo " Complete. "
echo "*********************************************************"

