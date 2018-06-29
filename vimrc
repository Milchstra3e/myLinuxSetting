set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

syntax on
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

autocmd FileType make setlocal noexpandtab

" for nomal setting
let mapleader=','

" for molokai
colorscheme molokai

" for vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='hybrid'
set laststatus=2

" for Nerd Tree
autocmd BufEnter * lcd %:p:h
autocmd VimEnter * if !argc() | NERDTree | endif
nmap <leader>ne :NERDTreeToggle<cr>
let NERDTreeShowLineNumbers=1
let g:NERDTreeWinPos="right"

" for delimitMate
let delimitMate_expand_cr=1

" for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"
let g:syntastic_c_compiler_options = "-std=c11 -Wall -Wextra -Wpedantic"

" for YouCompleteMe
let g:ycm_server_python_interpreter = '/usr/bin/python3'
