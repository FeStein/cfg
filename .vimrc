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
set colorcolumn=80   "sets vertical line at 80 characters

set autowriteall    "aut safe when changing buffers

"normal behavior of backspace
set backspace=indent,eol,start


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
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" use :PlugInstall to install the plugins -> Plug has to be installed first
" should be updated, since i dont know if i even need the plugins
call plug#begin('~/.vim/plugged')
Plug 'tomasiser/vim-code-dark'              "Vscode dark style
Plug 'ervandew/supertab'                    "lets use <Tab> for auto completion
Plug 'tpope/vim-surround'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'                     "use snippets
Plug 'honza/vim-snippets'                   "actual snippets, seperate from the engine
Plug 'vim-airline/vim-airline'              "status bar for vim
Plug 'google/vim-maktaba'                   "auto syntax
Plug 'google/vim-codefmt'                   "auto syntax
Plug 'google/vim-glaive'                    "auto syntax
Plug 'godlygeek/tabular'                    "Github like markdown
Plug 'plasticboy/vim-markdown'              "Github like markdown
Plug 'preservim/nerdtree'                   "file tree
Plug 'vim-syntastic/syntastic'              "syntax checking
Plug 'neovimhaskell/haskell-vim'
"Plug 'ycm-core/YouCompleteMe'               "yeah get me an IDE
call plug#end()

"Some further configurations for the different Plugins

"YouCompleteMe
let g:ycm_key_list_stop_completion = ['<CR>']

colorscheme codedark                        "vscode dark style

let vim_markdown_preview_github=1           "to use grip for markdown preview
let vim_markdown_preview_browser='Google Chrome'
let g:vim_markdown_folding_disabled = 1

let g:tex_flavor = 'latex'                  "set latex option for vim-tex

" concno
nnoremap <C-o> <nop>
inoremap <C-o> <nop>
nnoremap <C-i> <nop>
inoremap <C-i> <nop>

" remap W to w, in case of wrong captial letter
:command W w
:command Q q

"some powerline behavior stuff
let g:airline#extensions#tabline#enabled = 1

" using ctrl o/i for trigger and jump to snippets
let g:UltiSnipsExpandTrigger = '<C-o>'
let g:UltiSnipsJumpForwardTrigger = '<C-o>'
let g:UltiSnipsJumpBackwardTrigger = '<C-ü>'

" =============================================================================
"  # Syntastic settings
" =============================================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

nnoremap <C-q> :SyntasticCheck<CR>
" =============================================================================
"  # Remapping of Keys
" =============================================================================
" Ctrl+j and Ctrl+k as Esc -> Ctrl is mapped to caps lock via magnet/ ducky
" software
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

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"jump back
"nnoremap <C-,> <C-i>
"nnoremap <C-;> <C-o>

"nerdtree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" use make via ctrl m to quickly compile latex files
" nnoremap <C-m> :make<CR>

" auto correct spellerrors
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
" =============================================================================
"  # Some definitions for specific files
" =============================================================================

" Markdown
autocmd FileType markdown setlocal spell
autocmd FileType markdown setlocal tw=80


" Latex
autocmd FileType tex setlocal spell
autocmd FileType tex setlocal tw=80

" C / C++
autocmd FileType cpp setlocal tabstop=2 softtabstop=2
autocmd FileType cpp setlocal shiftwidth=2

autocmd FileType c setlocal tabstop=2 softtabstop=2
autocmd FileType c setlocal shiftwidth=2

"Variables for Snippets
let g:snips_author = "Felix Steinmetz"
let g:snips_email = "fsteinme@rhrk.uni-kl.de"
let g:snips_github = "github.com/FeStein"

"auto delete trailing white spaces
autocmd BufWritePre * :%s/\s\+$//e
