set runtimepath+=~/.vim/bundle/Vundle.vim
set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

"enlever la barre des onglets
set tabpagemax=1 showtabline=0

" VIM PLUG
" Specify a directory for plugins
" " - For Neovim: ~/.local/share/nvim/plugged
" " - Avoid using standard Vim directory names like 'plugin'
" call plug#begin('~/.vim/plugged')
"
" Make sure you use single quotes
call vundle#begin()

"Folding code
Plugin 'tmhedberg/SimpylFold'

Plugin 'vim-scripts/indentpython.vim'

"Syntax cheking/highlighting
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

call vundle#end()
filetype plugin indent on

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

"Strings for folded code
let g:SimpylFold_docstring_preview=1

"Formattage pour python
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Formattage web dev
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"UTF-8 support
set encoding=utf-8

let python_highlight_all=1
syntax on

set nu
