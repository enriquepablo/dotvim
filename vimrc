set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" install / update:
" $ vim +BundleInstall +qall

" My Bundles here:
"
" original repos on github
Bundle 'scrooloose/nerdtree'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'scrooloose/syntastic'
Bundle 'ivanov/vim-ipython'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'ervandew/supertab'

" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

set encoding=utf-8
syn on
filetype on
filetype plugin on
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartcase
set number
set noequalalways
set smartindent
set backspace=indent,start
set browsedir=current
set foldmethod=manual

" make :s substitute all matches in a line
" set gdefault

" GUI
set guifont=Inconsolata\ 11
set guioptions-=T
set guioptions-=m
set guitablabel=%M\ %t
if has("gui_running")
    " GUI is running or is about to start.
    " Maximize gvim window.
    set lines=40 columns=200
endif

"" Statusbar and Linenumbers
set cmdheight=1
set laststatus=2
set statusline=[%l,%c\ %P%M]\ %f\ %r%h%w

" to have edited buffers that aren't visible in a window somewhere
set hidden

" map change window size
noremap <silent> <S-Right> <C-W>>
noremap <silent> <S-Left> <C-W><
noremap <silent> <S-Up> <C-W>+
noremap <silent> <S-Down> <C-W>-

" map bn & bp
noremap <M-Right> :bn<CR>
noremap <M-Left> :bp<CR>

" replace semicolon for substitution
:noremap ; :s///g<Left><Left><Left>

" some filetypes
au BufRead,BufNewFile *.cpy,*.vpy   set ft=python
au BufRead,BufNewFile *.pt,*.cpt    set ft=xml
au BufRead,BufNewFile *.zcml        set ft=xml
au BufRead,BufNewFile *.wiki        set ft=creole
au BufRead,BufNewFile *.rst         set ft=rest

" type :W if you need to write as su
command W w !sudo tee % >/dev/null

" F keys mappings
nnoremap <silent> <F2>  :r !date +"\%Y-\%m-\%d"<CR>
nnoremap <silent> <F3>  :r !date +"\%H:\%M:\%S"<CR>
nnoremap <silent> <F6>  :Ipython<CR>
" nnoremap          <F6>  :FindFiles<Space>
" nnoremap          <F7>  :GrepFiles<Space>
nnoremap <silent> <F8>  :NERDTreeToggle<CR>
nnoremap <silent> <F9>  :Yakuake<CR>

" NERDTree
let g:NERDTreeIgnore=['\.swp$','\.pyc$','\.pyo$']
"
" python-mode
" let pymode_lint_cwindow=0
" let pymode_lint_ignore="E123,E127,E128"

autocmd BufRead,BufNewFile *.trm set filetype=terms
