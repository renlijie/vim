syntax on

filetype plugin on
filetype detect

colorscheme inkpot

set mouse=a
set runtimepath^=~/.vim/bundle/ctrlp.vim
" allways show status line
set ls=2
set number
set hlsearch
set incsearch
set visualbell
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set ruler
set wildignore=*.pyc,*.o,*.obj,*.class,.git,*~
set backup
set backupdir=$HOME/.vimbackup
set directory=$HOME/.vimswap
set viewdir=$HOME/.vimviews
set cursorline
set colorcolumn=121
set tags=./tags;/
" http://stackoverflow.com/questions/2732267/vim-loses-undo-history-when-changing-buffers
set hidden
" Make backspace not be completely broken -
" http://vim.wikia.com/wiki/Erasing_previously_entered_characters_in_insert_mode
set backspace=2

map [ :exec("tag ".expand("<cword>"))<CR>
nmap t :NERDTreeToggle<CR>
nnoremap ; :
nnoremap : ;
imap jj <Esc>

hi ColorColumn ctermbg=DarkGray

" Sane Ignore For ctrlp
let g:ctrlp_by_filename = 1
let g:ctrlp_dotfiles = 0
let g:ctrlp_clear_cache_on_exit = 0

" Creating directories if they don't exist
silent execute '!mkdir -p $HOME/.vimbackup'
silent execute '!mkdir -p $HOME/.vimswap'
silent execute '!mkdir -p $HOME/.vimviews'

autocmd! BufNewFile * silent! 0r ~/.vim/templates/tmpl.%:e
" remove spaces at the end of lines
:au BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
