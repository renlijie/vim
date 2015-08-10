function clean_install() {
  echo ">>> git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle"
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  echo ""

  echo ">>> BundleInstall"
  vim +BundleInstall +qall

  echo ">>> creating .vimrc and .gvimrc"
  echo "source $HOME/.vim/_vimrc" > ~/.vimrc
  echo "source $HOME/.vim/_gvimrc" > ~/.gvimrc
  echo ""

  echo "done"
  vi ~/.vim/_vimrc
}

clean_install
