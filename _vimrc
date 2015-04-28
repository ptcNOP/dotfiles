filetype off
syntax on

set nocompatible
set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

set foldmethod=indent
set foldlevel=99

if v:version >= 703
    set relativenumber
    set colorcolumn=80
endif

" Need to figure out what these do
" let mapleader = ","

" nnoremap / /\v
" vnoremap / /\v
" set ignorecase
" set smartcase
" set gdefault
" set incsearch
" set showmatch
" set hlsearch
" END

" Clear all highlights
nnoremap <leader><space> :noh<cr>
" Wrap curent paragraph
nnoremap <leader>w {gq}
" Prettify JSON
nnoremap <leader>j :%!python -m json.tool<cr>
" Select all
nnoremap <leader>a ggVG
" Toggle Syntastic Mode
nnoremap <leader>s :SyntasticToggleMode<cr>

" Show trailing whitespace with a <
" set list
" set listchars=tab:>.,trail:<

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
noremap ; :
inoremap jj <ESC>

nnoremap <F4> :CtrlP <CR>
nnoremap <F5> :GundoToggle<CR>

" Underline the current line with dashes in normal mode
nnoremap <F6> yyp<c-v>$r-

" Underline the current line with dashes in insert mode
inoremap <F6> <Esc>yyp<c-v>$r-A

nnoremap <F7> :bp<cr>
inoremap <F7> <Esc>:bp<cr>
nnoremap <F8> :bn<cr>
inoremap <F8> <Esc>:bn<cr>
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

set background=dark
colorscheme darkblue

set wrap
set linebreak
set textwidth=79
set formatoptions=tcroqnl

autocmd FileType html,htmldjango set ts=2 sts=2 sw=2
autocmd FileType yaml set ts=2 sts=2 sw=2
autocmd FileType mkd set ts=2 sts=2 sw=2 foldlevel=20
