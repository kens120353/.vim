set foldmethod=indent
set nocompatible
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set nu
set autoindent
set cindent
syntax on
set cursorline
set cursorcolumn
set showmatch
" Enable folding
set foldmethod=indent
set foldlevel=99

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent

" Enable folding with the spacebar
nnoremap <space> za

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8

call plug#begin()

Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'tmhedberg/SimpylFold'
Plug 'axvr/org.vim'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'altercation/vim-colors-solarized'
Plug 'preservim/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
Plug 'fatih/vim-go'
Plug 'ervandew/supertab'
Plug 'pangloss/vim-javascript'


call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

