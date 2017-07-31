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
autocmd FileType c,cpp,java,python set formatoptions+=ro tabstop=2 shiftwidth=2 expandtab
"autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

