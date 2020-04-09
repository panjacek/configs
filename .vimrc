execute pathogen#infect()
filetype plugin indent on
syntax on

" set 256 colors
set t_Co=256

set tabstop=4
" Tabs to spaces
set expandtab
set shiftwidth=4
set softtabstop=4
set pastetoggle=<F2>

" show a visual line under the cursor's current line
" set cursorline

" autocmd FileType python setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType cpp setlocal shiftwidth=2 softtabstop=2 expandtab
" autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab
" autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab

" PYTHON ------------------
" Items for Python supertab
let g:SuperTabDefaultCompletionTypeDiscovery = [
            \ "&completefunc:<c-x><c-u>",
            \ "&omnifunc:<c-x><c-o>",
            \ ]
let g:SuperTabLongestHighlight = 1
autocmd FileType python set omnifunc=pythoncomplete#Complete
" enable all Python syntax highlighting features
let python_highlight_all = 1


" ---- FLAKE8
let g:flake8_show_in_file=1  " show
let g:flake8_quickfix_height=13
" autocmd BufWritePost *.py call Flake8() " check on save

let g:flake8_error_marker='EE'     " set error marker to 'EE'
let g:flake8_warning_marker='WW'   " set warning marker to 'WW'
let g:flake8_pyflake_marker='PP'     " disable PyFlakes warnings
let g:flake8_complexity_marker='CC'  " disable McCabe complexity warnings
let g:flake8_naming_marker='NN'      " disable naming warnings

" to use colors defined in the colorscheme
highlight link Flake8_Error      Error
highlight link Flake8_Warning    WarningMsg
highlight link Flake8_Complexity WarningMsg
highlight link Flake8_Naming     WarningMsg
highlight link Flake8_PyFlake    WarningMsg

" Markdown
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
" set syntax=markdown

" Syntax helper
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" JAVA JAVA
" autocmd FileType java setlocal omnifunc=javacomplete#Complete


" YML
autocmd FileType {yaml,yml} setlocal ts=2 sts=2 sw=2 expandtab

" Make it DARK...
set background=dark
" color darkblue
" color PerfectDark
" color Crystallite
let g:molokai_original = 0
" let g:rehash256 = 1
color molokai

" Search plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" open NERDTree
nmap <silent> <C-D> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
" autocmd vimenter * NERDTree

" visual autocomplete form cmd menu
set wildmenu

" highlight matching [{()}]
set showmatch

" search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Display line numbers
set number

" Folding
set foldenable
set foldmethod=indent
set foldlevelstart=1 " Show class and def, for example
set foldnestmax=5
highlight Folded ctermbg=8 

" Space to open current fold 
nnoremap <space> za
vnoremap <space> zf

" statusline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2

" UI draw fix.
set lazyredraw      
set cmdheight=1
hi Normal guibg=NONE ctermbg=NONE
