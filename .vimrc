set nocompatible              
"set statusline=\ %F%m%r%h%w\ %=%l/%L,\ %v

filetype on            	        " enables filetype detection
filetype plugin on              " enables filetype specific plugins
filetype plugin indent on       " Loads vim's ftplugin files automatically when a Python buffer is opened
syntax on                       " syntax highlighing
set background=dark
colorscheme solarized

set number          	        " show line numbers
set tabstop=4       	        " numbers of spaces of tab character
set shiftwidth=4    	        " numbers of spaces to (auto)indent
set softtabstop=4               " numbers of spaces of tab character
set showcmd         	        " shows which commands you have been typing so far
set ruler           	        " show the cursor position all the time
set incsearch       	        " show search matches as you type
set expandtab                   " turns tabs into spaces
set autoindent
set autochdir                   " automatically make the current edited file your current working directory
set title                       " sets the title of terminal with filename
set foldmethod=indent	        " code folding
set foldlevel=99                " files are always loaded with open folds

" setting word wrap
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

" Easy window navigation
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l

" Auto-completion
"set wildmode=list:longest
"set completeopt=longest,menuone
""inoremap <tab> <C-n><C-r>
"inoremap <expr> <tab> pumvisible() ? '<C-n>' :
"  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Macros for commenting code
autocmd FileType java let @c = ':s/^/\/\//'
autocmd FileType java let @u = ':s/\/\///'

autocmd FileType c let @c = ':s/^/\/\//'
autocmd FileType c let @u = ':s/\/\///'

autocmd FileType cs let @c = ':s/^/\/\//'
autocmd FileType cs let @u = ':s/\/\///'

autocmd FileType python let @c = ':s/^/#/'
autocmd FileType python let @u = ':s/#//'

autocmd FileType tex let @c = ':s/^/%/'
autocmd FileType tex let @u = ':s/%//'


" Vundle stuff
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'                                                                                                                                       
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"disable YCM for LaTeX
let g:ycm_filetype_blacklist = {
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'text' : 1,
      \ 'tex' : 1,
      \}
Bundle 'davidhalter/jedi-vim'
