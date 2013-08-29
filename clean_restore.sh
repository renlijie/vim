function clean_install() {
  echo ">>> brew install macvim"
  brew install macvim
  echo ""

  echo ">>> git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle"
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  echo ""

  echo ">>> BundleInstall"
  mvim +BundleInstall +qall

  echo ">>> compiling YouCompleteMe"
  cd ~/.vim/bundle/YouCompleteMe
  ./install.sh --clang-completer
  echo ""

  echo ">>> creating .vimrc and .gvimrc"
  echo "source $HOME/.vim/_vimrc" > ~/.vimrc
  echo "source $HOME/.vim/_gvimrc" > ~/.gvimrc
  echo ""

  echo "done"
  vi ~/.vim/_vimrc
}

clean_install
