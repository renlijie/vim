sudo apt-get install vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
echo "source $HOME/.vim/_vimrc" > ~/.vimrc
vim +BundleInstall +qall
vim ~/.vimrc
