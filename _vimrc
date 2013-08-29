set nocompatible               " be iMproved

source /usr/share/vim/google/google.vim
Glug youcompleteme-google

set noeb vb t_vb=              " disable beeping
filetype off                   " required!
filetype plugin indent on      " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'aghareza/vim-gitgrep'
Bundle 'airblade/vim-gitgutter'
Bundle 'altercation/vim-colors-solarized'

syntax enable
set background=dark
colorscheme solarized

"syntax on
"colorscheme inkpot

"filetype plugin on
"filetype detect

let mapleader = 'm'

" always show status line
set ls=2
set ignorecase
set number
" keep cursor away from the top/bottom
set scrolloff=5
set hlsearch
set incsearch
set visualbell
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set ruler
set smartcase
set wildignore=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.o,*.obj,*.class,.git,*~
set wildmenu
set wildmode=list:longest,full
set backup
set backupdir=$HOME/.vimbackup
set directory=$HOME/.vimswap
set viewdir=$HOME/.vimviews
set cursorline
set tags=./tags;/
" http://stackoverflow.com/questions/2732267/vim-loses-undo-history-when-changing-buffers
set hidden
" Make backspace not be completely broken -
" http://vim.wikia.com/wiki/Erasing_previously_entered_characters_in_insert_mode
set backspace=2
set diffopt+=iwhite

" ctags: go to declaration
map [ :exec("tag ".expand("<cword>"))<CR>
" toggle NerdTree view
nmap t :NERDTreeToggle<CR>
" find current file in NerdTree view
map <leader>f :NERDTreeFind<CR>
" change newline to linux style
nmap <leader>c :%s//g<CR>

nnoremap ; :
imap jj <Esc>

hi ColorColumn ctermbg=DarkGray

" make ctrlp easier to use
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 100
let g:ctrlp_by_filename = 1
let g:ctrlp_dotfiles = 0
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = {
  \ 'dir': '\/Users\/lijie\/Library\/\|\/Users\/lijie\/Applications\/\|\/Users\/lijie\/Desktop\/', }

" buffergator
let g:buffergator_viewport_split_policy = "T"
let g:buffergator_autoexpand_on_split = 0
let g:buffergator_split_size = 5
let g:buffergator_display_regime = "filepath"

" superTab
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
set complete=.,w

" creating directories if they don't exist
silent execute '!mkdir -p $HOME/.vimbackup'
silent execute '!mkdir -p $HOME/.vimswap'
silent execute '!mkdir -p $HOME/.vimviews'

" include template when creating a new file
autocmd! BufNewFile * silent! 0r ~/.vim/templates/tmpl.%:e
" remove spaces at the end of lines
:au BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
" automatically cd into the directory that the file is in (conflicts with
" fugitive)
"autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')
