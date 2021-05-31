nnoremap <silent> <C-p> :Files<CR>
set clipboard^=unnamed,unnamedplus
set number

tnoremap <Esc> <C-\><C-n>

call plug#begin('~/.vim/plugged')
Plug 'herrbischoff/cobalt2.vim'
call plug#end()
colorscheme cobalt2

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
