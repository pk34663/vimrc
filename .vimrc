" set the runtime path to include Vundle and initialize
set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required

" enable filetype detection:
filetype on
filetype plugin on
filetype indent on " file type based indentation

" by default, the indent is 2 spaces. 
set shiftwidth=2
set softtabstop=2
set tabstop=2

" for C-like  programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
autocmd FileType c,cpp,java,python set formatoptions+=ro tabstop=4 shiftwidth=4 expandtab
"autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
set autowrite                   " Automatically save before :next, :make etc.
set autoread                    " Automatically reread changed files without asking me anything
" Make Vim to handle long lines nicely.
set wrap
set textwidth=79

"Youcompleteme fix
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" vim-airline theme

let g:airline_theme = 'bubblegum'
set t_Co=256
set background=dark
"colorscheme evening
colorscheme elflord
