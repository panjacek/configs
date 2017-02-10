" color darkblue
filetype plugin indent on
syntax on
execute pathogen#infect()

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set pastetoggle=<F2>

" Items for Python supertab
let g:SuperTabDefaultCompletionTypeDiscovery = [
            \ "&completefunc:<c-x><c-u>",
            \ "&omnifunc:<c-x><c-o>",
            \ ]
let g:SuperTabLongestHighlight = 1
autocmd FileType python set omnifunc=pythoncomplete#Complete

set background=dark
" color PerfectDark
color Crystallite


" Search plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

