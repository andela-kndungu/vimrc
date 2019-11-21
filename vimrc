" =============================================================================
"                                  VUNDLE
" ============================================================================= 

" ================================Set up==================================

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" =================================Plugins================================

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My favourite theme
Plugin 'flazz/vim-colorschemes'

" =================================Finish up==============================

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" =============================================================================
"                                  VUNDLE
" ============================================================================= 

" =============================================================================
"                             MY COMMANDS
" =============================================================================

" ============================Change Defaults=============================

" Make backspace work normally when in insert mode
set backspace=indent,eol,start

" ============================Set up the UI===============================

" Set colour scheme
syntax on
colorscheme evening

" Show line numbers by default
set number

" Indicate 80 characters mark
set colorcolumn=80

" 80 characters column colour
highlight ColorColumn ctermbg=DarkGrey

" EOL character's colour
highlight NonText ctermfg=Cyan

" ============================Movements===================================

" Move to the beginning/end of line
nnoremap bl ^
nnoremap el $

" ============================Shortcuts===================================

" Change the mapleader from \ to '
let mapleader="'"

" nm is <escape> when in insert and visual mode
inoremap nm <esc>
vnoremap nm <esc>

" Easily save changes to file 
map <leader>s :up<CR>

" Autoformat current file
nnoremap <leader>f mkgg=G'k

" Save and quit
map <leader>wq :wq<CR>

" Quit without saving
map <leader>q :q!<CR>

" Replace tabs with spaces
map <leader>ts  mk:%s/\t/  /g<CR>'k

" Refresh current buffer if it has been externally modified
map <leader>r :edit! <CR>

" Copy to clipboard
map <leader>c :w !pbcopy<CR><CR>

" =============================================================================
"                             MY COMMANDS 
" =============================================================================
