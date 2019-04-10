" VIMRC - Reza Jatnika <rezajatnika@gmail.com>
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/vim-easy-align'
Plug 'kien/ctrlp.vim'
Plug 'mhinz/vim-signify'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Initialize plugin system
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Standard encoding
set encoding=utf-8

" Colorscheme
syntax enable
set background=light
colorscheme solarized

" Enable line numbers
set number

" Airline configuration

" Spaces & Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab   " Use spaces instead of tabs.
set smarttab    " Let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround  " Tab / shifting moves to closest tabstop.
set autoindent  " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

" We have VCS -- we don't need this stuff.
set nobackup      " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile    " They're just annoying. Who likes them?

" don't nag me when hiding buffers
set hidden   " Allow me to have buffers with unsaved changes.
set autoread " When a file has changed on disk, just load it. Don't ask.

" syntastic
let g:syntastic_go_checkers = ['govet', 'errcheck', 'go']

" vim-go
setlocal omnifunc=go#complete#Complete
let g:go_highlight_types=1
let g:go_highlight_functions=1
let g:go_highlight_function_calls=1
let g:go_highlight_operators=1

" auto create directories
if exists("*mkdir") "auto-create directories for new files
  au BufWritePre,FileWritePre * silent! call mkdir(expand('<afile>:p:h'), 'p')
endif

" So we don't have to press shift when we want to get into command mode.
nnoremap ; :
vnoremap ; :
