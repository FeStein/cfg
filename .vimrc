" =============================================================================
"  # Editor Settings
" =============================================================================

" some graphical stuff
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
set incsearch
set colorcolumn=80 "sets vertical line at 80 characters

" Sane splits 
set splitright
set splitbelow

" Permanent undo
set undodir=~/.vimdid
set undofile

highlight ColorColumn ctermbg=0 guibg=lightgrey

"always show status line
set laststatus=2

" =============================================================================
"  # Install of Plugins
" =============================================================================

" use :PlugInstall to install the plugins -> Plug has to be installed first
" should be updated, since i dont know if i even need the plugins 
call plug#begin('~/.vim/plugged')

" Plug 'morhetz/gruvbox'
" Plug 'jremmen/vim-ripgrep'
" Plug 'tpope/vim-fugitive'
" Plug 'mbbill/undotree'
" Plug 'davidhalter/jedi-vim'
Plug 'tomasiser/vim-code-dark'              "Vscode dark style
Plug 'ervandew/supertab'                    "lets use <Tab> for auto completion
Plug 'tpope/vim-surround'
Plug 'JamshedVesuna/vim-markdown-preview'
call plug#end()

"Some further configurations for the different Plugins

colorscheme codedark                        "vscode dark style

let vim_markdown_preview_github=1           "to use grip for markdown preview

" =============================================================================
"  # Remapping of Keys
" =============================================================================
" Ctrl+j and Ctrl+k as Esc -> Ctrl is mapped to caps lock via magnet 
nnoremap <C-j> <Esc>
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>
snoremap <C-j> <Esc>
xnoremap <C-j> <Esc>
cnoremap <C-j> <C-c>
onoremap <C-j> <Esc>
lnoremap <C-j> <Esc>
tnoremap <C-j> <Esc>

nnoremap <C-k> <Esc>
inoremap <C-k> <Esc>
vnoremap <C-k> <Esc>
snoremap <C-k> <Esc>
xnoremap <C-k> <Esc>
cnoremap <C-k> <C-c>
onoremap <C-k> <Esc>
lnoremap <C-k> <Esc>
tnoremap <C-k> <Esc>

" jump to start and end of line using the home row keys
map H ^
map L $

" Auto closing Bracket
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

