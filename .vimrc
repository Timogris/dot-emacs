 set runtimepath+=~/.vim_runtime
 
 source ~/.vim_runtime/vimrcs/basic.vim
 source ~/.vim_runtime/vimrcs/filetypes.vim
 source ~/.vim_runtime/vimrcs/plugins_config.vim
 source ~/.vim_runtime/vimrcs/extended.vim
 
 try
 source ~/.vim_runtime/my_configs.vim
 catch
 endtry
 
 let g:sierra_Pitch = 1
 colorscheme sierra
 
 let g:lightline = {
       \ 'colorscheme': 'seoul256',
       \ }
 set noshowmode
 hi Normal guibg=NONE ctermbg=NONE
 
 " vim-plug; manager de plugins pour vim
 call plug#begin()
 
     " vimtex; plugin pour LaTeX dans vim
     Plug 'lervag/vimtex'
     " A Vim Plugin for Lively Previewing LaTeX PDF Output
     Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
 
 call plug#end()
 
 cnoreabbrev NERD NERDTree
 cnoreabbrev pdflatex LLPStartPreview
