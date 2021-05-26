#/bin/dash

##########################################################
# vim configuration Script.
# 19/07/02
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
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "*********************************************************"
echo " Copy the .vimrc file "
echo "*********************************************************"
ln -s ./vimrc ~/.vimrc


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
echo " Install Plugin YouCompleteMe "
echo "*********************************************************"
sudo apt install build-essential cmake vim-nox python3-dev -y
"sudo apt install mono-complete golang nodejs default-jdk npm -y
cd ~/.vim/bundle/YouCompleteMe
"python3 install.py --all
python3 ./install.py --clang-completer 

echo "*********************************************************"
echo " Complete. "
echo "*********************************************************"

