
" Plugins
call plug#begin()
Plug 'mcchrish/nnn.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'justinmk/vim-sneak'
call plug#end()

set number                     " Show current line number
set relativenumber             " Show relative line numbers
set clipboard=unnamedplus      " copy and yank to system clipboard
" tnoremap <Esc> <C-\><C-n>      " enable esc in terminal
let mapleader = "\<Space>"

map <leader>f :Format<CR>





let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Vim Sneak
let g:sneak#label = 1
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T



set termguicolors

" enable mouse
set mouse=a
if has('mouse_sgr')
    " sgr mouse is better but not every term supports it
    set ttymouse=sgr
endif

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"

" save undo 
set undofile

"Coc Settings
" installed coc-svelte coc-prettier
" command! -nargs=0 Prettier :CocCommand prettier.formatFile


"theme
colorscheme nord
