colorscheme hemisu
"colorscheme noctu

syntax on
set background=dark

set nocompatible			" be iMproved, required
filetype off					" required

set rtp+=/usr/lib/python3.4/site-packages/powerline/bindings/vim
let g:Powerline_symbols = 'compatible'

set laststatus=2			" Always display the statusline in all windows
set showtabline=2   	" Always display the tabline, even if there is only one tab
set noshowmode      	" Hide the default mode text (e.g. -- INSERT -- below the statusline)

set encoding=utf-8

set nowrap						" don't wrap lines
set tabstop=2					" a tab is four spaces
set autoindent				" always set autoindenting on
set copyindent				" copy the previous indentation on autoindenting
"set number						" always show line numbers
set shiftwidth=2			" number of spaces to use for autoindenting
set shiftround				" use multiple of shiftwidth when indenting with '<' and '>'
set showmatch					" set show matching parenthesis
set ignorecase				" ignore case when searching
set smartcase					" ignore case if search pattern is all lowercase,
											"    case-sensitive otherwise
set smarttab					" insert tabs on the start of a line according to
											"    shiftwidth, not tabstop
set hlsearch					" highlight search terms
set incsearch					" show search matches as you typei

set history=1000			" remember more commands and search history
set undolevels=1000		" use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title							" change the terminal's title
set visualbell				" don't beep
set noerrorbells			" don't beep

set nobackup
set noswapfile

filetype plugin indent on

set pastetoggle=<F2>
set mouse=a

