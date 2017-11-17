" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Colors
colorscheme desert
set background=dark


" Tabs, spaces;
" 1 tab == 4 spaces
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Linebreak on 500 characters
set lbr
set tw=500

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
"set autoindent
set smartindent

" Display line numbers on the left
set number

" Sets how many lines of history VIM has to remember
set history=700

" case insensitive, except when using capital letters
set ignorecase
set smartcase

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
"language message en
set langmenu=none

" Use english for spellchecking, but turn it off by default
if version >= 700
    set spl=en spell
    set nospell
endif

" Enable mouse support
"set mouse=a


" Statusline
set laststatus=2
set statusline=%t "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'} "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h "help file flag
set statusline+=%m "modified flag
set statusline+=%r "readonly flag
set statusline+=%y "filetype
set statusline+=%= "left/right separtor
set statusline+=%c- "cursor column
set statusline+=%l/%L "cursor line / total lines

" set bell visual
set visualbell
