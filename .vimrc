## Install plugin manager
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## Copy to .vimrc file
let g:netrw_liststyle=3
execute pathogen#infect()
syntax on
filetype plugin indent on
let g:jsx_ext_required = 0
