## Install plugin manager
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## Install enhancer for netrw (:Explorer)

cd ~/.vim/bundle
git clone git://github.com/tpope/vim-vinegar.git

#### Copy to .vimrc file
======
" Tree view for :Explore
let g:netrw_liststyle=3
" Syntax highlighting
syntax on
"  Indentation
filetype plugin indent on
set expandtab
set tabstop=2

" Plugin manager
execute pathogen#infect()
" Use jsx files in indentation
let g:jsx_ext_required = 0
=====
