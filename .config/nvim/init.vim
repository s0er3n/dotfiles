nnoremap <silent> <C-p> :Files<CR>
set clipboard^=unnamed,unnamedplus
set number


call plug#begin('~/.vim/plugged')
Plug '907th/vim-auto-save'
Plug 'herrbischoff/cobalt2.vim'
Plug 'tpope/vim-surround'
call plug#end()
colorscheme cobalt2

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:auto_save = 1
