" My Config
nnoremap <silent> <C-p> :Files<CR>
set clipboard+=unnamedplus
set number                     " Show current line number
set relativenumber             " Show relative line numbers
set hidden 
" Theme colorscheme gruvbox
colorscheme gruvbox
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'kdheepak/lazygit.nvim'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug '907th/vim-auto-save'
Plug 'caenrique/nvim-toggle-terminal'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:auto_save = 1
" Vim Sneak
let g:sneak#label = 1
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

" enable mouse
set mouse=a
if has('mouse_sgr')
    " sgr mouse is better but not every term supports it
    set ttymouse=sgr
endif

" save undo 
set undofile

" ToggleTerminal Keybindings
tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
nnoremap <silent> <C-z> :ToggleTerminal<Enter>
tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal<Enter>

" enable dotfiles for fzf not implemented
"
" space bar to leader
let mapleader=" "

