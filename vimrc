" change the leader to be a comma vs slash
let mapleader=","

" syntax highlighting
syntax on

" display line numbers
set number

" using only 1 column (and 1 space) while possible
set numberwidth=1

" we are using dark background in vim
set background=dark

" ignore these files when completing
set wildignore+=.git,*.pyc

" show a line at column 79
if exists("&colorcolumn")
    set colorcolumn=79
endif

" have a line indicate the cursor location
set cursorline

" show the cursor position all the time
set ruler

" use spaces, not tabs, for autoindent/tab key.
set expandtab

" don't wrap text
set nowrap

" don't wrap text in the middle of a word
set linebreak

" always set auto-indenting on
set autoindent

" use smart indent if there is no indent file
set smartindent

" <tab> inserts 4 spaces
set tabstop=4

" but an indent level is 4 spaces wide.
set shiftwidth=4

" <BS> over an autoindent deletes both spaces.
set softtabstop=4

" rounds indent to a multiple of shiftwidth
set shiftround

" show matching <> (html mainly) as well
set matchpairs+=<:>

" allow us to fold on indents
set foldmethod=indent

" don't fold by default
set foldlevel=99

" don't bell or blink
set noerrorbells
set vb t_vb=

" keep our cursor in the middle of the screen
set scrolloff=100
set sidescrolloff=30

" show whitespace
set list
set listchars=tab:>-,trail:~

" default to using case insensitive searches ...
set ignorecase

" ... unless uppercase letters are used in the regex.
set smartcase

" handle tabs more intelligently while searching
set smarttab

" highlight searches by default.
set hlsearch

" incrementally search while typing a /regex
set incsearch

" replace line numbers with relative line numbers
set relativenumber

" remove trailing whitespace on <leader>S
noremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

filetype plugin indent on

" powerline settings
set laststatus=2
set encoding=utf-8
set t_co=256
source /usr/share/powerline/bindings/vim/plugin/powerline.vim
" source ~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim

" set color theme
colorscheme solarized8

" enable pyflakes?
filetype plugin indent on

" run flake8 on save
autocmd BufWritePost *.py call Flake8()

" ignore pep8 violations
" E711: bool(Object() == None): N/A if Object overrides __eq__()
let g:flake8_ignore='E711'

" cut, copy & paste
nmap <C-V> "+gP
imap <C-V> <ESC>"+gpi
vmap <C-V> c<ESC>"+gph
vmap <C-C> "+y
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" enable spell checking
set spell spelllang=en_us
