syntax on

set autoread
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'davidhalter/jedi-vim'
Plug 'tomasiser/vim-code-dark'
Plug 'ervandew/supertab'

call plug#end()

let g:jedi#use_splits_not_buffers = "right"

colorscheme codedark

"pressing z to wrap word in parenthesis
nnoremap <leader>z viw<esc>a)<esc>hbi(<esc>lel

"Auto closing Bracket
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
