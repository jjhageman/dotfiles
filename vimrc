set nocompatible

:so ~/bin/dotfiles/vim/vundle
:so ~/bin/dotfiles/vim/gvimrc
:so ~/bin/dotfiles/vim/plugins
:so ~/bin/dotfiles/vim/mappings

"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" jump to buffer in the same tab if already open
let g:ctrlp_switch_buffer = 1

let mapleader = ","

" Set encoding
set encoding=utf-8

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Directories for swp files
"set backupdir=~/.vim/backup
"set directory=~/.vim/backup
" directory settings
call system('mkdir -vp ~/.backup/undo/ > /dev/null 2>&1')
set backupdir=~/.backup,.       " list of directories for the backup file
set directory=~/.backup,~/tmp,. " list of directory names for the swap file
set nobackup            " do not write backup files
set backupskip+=~/tmp/*,/private/tmp/* " skip backups on OSX temp dir, for crontab -e to properly work
set noswapfile          " do not write .swp files
set undofile
set undodir=~/.backup/undo/,~/tmp,.

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
