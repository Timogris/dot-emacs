set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

colorscheme angr 

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

"vimtex
" VIM PLUG
" Specify a directory for plugins
" " - For Neovim: ~/.local/share/nvim/plugged
" " - Avoid using standard Vim directory names like 'plugin'
" call plug#begin('~/.vim/plugged')
"
" " Make sure you use single quotes
call plug#begin()
Plug 'lervag/vimtex'
"A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
"Folding code
Plug 'tmhedberg/SimpylFold'

Plug 'vim-scripts/indentpython.vim'
"Autocomplete
Plug 'Valloric/YouCompleteMe'"
"Syntax cheking/highlighting
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
"search from vim
Plug 'kien/ctrlp.vim'
"pywal for vim
Plug 'dylanaraps/wal.vim'
call plug#end()

let g:livepreview_previewer = 'evince'
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

"autocompletion
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on
 
 cnoreabbrev NERD NERDTree
 cnoreabbrev pdflatex LLPStartPreview
