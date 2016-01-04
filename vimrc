" Turn off Vi-compatible
set nocompatible

" Turns on Vim's file type detection logic
filetype on
filetype plugin on
filetype indent on

" Make the man page appear in a Vim window, then you can use the command:
" :Man to find what you need, for example: :Man 3 printf.
runtime! ftplugin/man.vim

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=3

" Including '<' and '>' in matchpairs, then the % command can jump from one to the other.
set matchpairs+=<:>

" Show (partical) command in the last line of the screen. not
" available when compiled without the +cmdline_info feature
set showcmd

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations like <leader>w saves the current file
let mapleader="\<Space>"
" let g:mapleader=","

" Fast saving
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
" Sets how many lines of history Vim has to remember
set history=100

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hidden

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" Recognizes wildcard characters when patterns matching
set magic

" How many tenths of a second to blink when matching brackets
set matchtime=2

" Enable syntax hightlighting when the terminal support colors
if &t_Co > 1
	syntax enable
endif

" When set to dark, Vim will try to use colors that look good on a dark background.
set background=dark

" Set utf-8 as standard encoding and en_US as the standard language
set encoding=utf-8

" Turn backup off, since most stuff is in SVN, git etc anyway...
set nobackup

" Don't make a backup before overwriting a file.
" set nowritebackup

" Don't use a swapfile for the buffer.
set noswapfile

" Use spaces instead of tabs
" set expandtab

" Be smart when tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Number of spaces that a <Tab> counts for while performing editing operations,
" like inserting a <Tab> or using <BS>	
" set softtabstop=4

" Enable C-style indentation
set cindent

" To include C++ header files path then commands like gf can find it
set path+=/usr/include/c++/4.9/

" The name of the program to run when the \":make\" command is executed,
" can set to another compiler when use vc++ or others
set makeprg=make

" When on, it causes lines to be automatically indented 
set autoindent

" Do smart autoindenting when starting a new line
set smartindent

" Linebreak on 75 characters
set linebreak
set textwidth=75

" When on, lines longer than the width of the window will warp and displaying
" continues on the next line
set wrap

" Searches wrap around the end of the file.
set wrapscan

" Name of the shell to use for ! and :! commands
set shell=bash

" Print the line number in front of each line
set number

" Minimal number of columns to use for the line number
set numberwidth=3

" Set color scheme that I like colorscheme darkblue
if has ("gui_running")
    colorscheme desert
else
	colorscheme zellner
endif

" Use Unix as the standard file type
set fileformats=unix,mac,dos

" 'cpoptions' stands for compatible-options. A sequence of single character flags
set cpoptions+=$

" Include a dash in keywords, so that commands like w consider
" upper-case to be one word.
set iskeyword+=-

" Some abbreviations
abbreviate #d #define

" When completing a word in insert mode from the tags file, the entire tag will be shown
set showfulltag

" The 'formatoptions' controls how Vim performs automatic wrapping.
set formatoptions+=or

" Add a bit extra margin to the left
set foldcolumn=1

" Set foldmethod
set foldmethod=indent

" Set the command to execute cscope.
set csprg=/usr/bin/cscope

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" To insert timestamp, press <F3>
nmap <F3> a<C-R>=strftime("%Y/%m/%d %a %I:%M %P")<CR><Esc>
imap <F3> <C-R>=strftime("%Y/%m/%d %a %I:%M %P")<CR>

" Setup the ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Powerline configuration
set laststatus=2
" Explicitly tell vim that the terminal supports 256 colors
set t_Co=256

" Set up pathogen to easily manage plugins
call pathogen#infect()
