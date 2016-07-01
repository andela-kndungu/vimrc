" =============================================================================
"                                  VUNDLE
" ============================================================================ 

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
Plugin 'trusktr/seti.vim'

" To easily browse files 
Plugin 'scrooloose/nerdtree'

" Autocomplete enclosures
Plugin 'jiangmiao/auto-pairs'

" Syntax highlighting and improved indentation for JavasScript
Plugin 'pangloss/vim-javascript'

" For linting
Plugin 'scrooloose/syntastic'

" To do git stuff inside vim
Plugin 'tpope/vim-fugitive'

" Treat jsx files as js files for linting
Plugin 'mxw/vim-jsx'

" Easily toggle comments
Plugin 'scrooloose/nerdcommenter'

" Code completion as you type
Plugin 'Valloric/YouCompleteMe'

" =================================Finish up==============================

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" =============================================================================
"                                  VUNDLE
" ============================================================================ 

" =============================================================================
"                             MY COMMANDS 
" =============================================================================

" ============================Add Functionality===========================

" Make backspace work normally when in insert mode
set backspace=indent,eol,start

" ============================File Indentation============================

" By default, the indent is 2 spaces
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Display tabs so you don't forget to remove them
set list

" ============================Set up the UI===============================

" Use seti colour theme 
syntax on
colorscheme seti

" Show line numbers by default
set number

" Indicate 80 characters mark
set colorcolumn=80

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

" Easily display NerdTree 
map <F3> :NERDTreeToggle<CR>

" Easily shift between panes 
nnoremap <F8> <C-w>w 

" Easily save changes to file 
map <leader>s :up<CR>

" Autoformat current file
nnoremap <leader>f mkgg=G'k

" Save and quit
map <leader>wq :wq<CR>

" Quit without saving
map <leader>q :q!<CR>

" Replace tabs with spaces
map <leader>ts :%s/\t/  /g<CR>

" Quick access to Fugitives
map <leader>gs :Gstatus<CR>

" Toggle comments
map <leader>c :call NERDComment(0,"toggle")<CR>

" ============================Configure Nerd Tree=========================

" Show hidden files by default
let NERDTreeShowHidden=1

" ============================Configure Syntastic=========================

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_check_on_up = 1
let g:syntastic_javascript_checkers = ['eslint']

" Override eslint with local version where necessary.
let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
  let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
  let g:syntastic_javascript_eslint_exec = local_eslint
endif

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" =============================================================================
"                             MY COMMANDS 
" =============================================================================
