" My defaults
filetype off

" For vim-plug
call plug#begin('~/.nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
" Plug 'kien/ctrlp.vim'
Plug 'nvie/vim-flake8'
" Plug 'davidhalter/jedi-vim'
" Plug 'Shougo/neocomplete.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'wesQ3/vim-windowswap'
" Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/deoplete.nvim'
Plug 'scrooloose/nerdcommenter'
Plug 'benekastah/neomake'
Plug 'bling/vim-airline'
"Plug 'bling/vim-airline-themes'
Plug 'majutsushi/tagbar'
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/vimproc.vim'
Plug 'klen/python-mode'
Plug 'mitsuhiko/vim-jinja'
Plug 'isRuslan/vim-es6'
Plug 'wincent/ferret'
Plug 'mhinz/vim-grepper'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'dominikduda/vim_current_word'

call plug#end()
filetype plugin indent on

" My custom stuff
set paste
set ic
set mouse=a
set hlsearch
let mapleader=","
syntax on

set wildignore+=*/staticfiles/*

" Clipboard
set clipboard+=unnamedplus

" Theme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Neomake with F5
nnoremap <F5> :Neomake<CR>

" Grepper bindings
" nnoremap <C-g> :Grepper<CR><C-R><C-W><CR>
nnoremap <leader>git :Grepper -tool git -noswitch<cr>
nnoremap <leader>ag  :Grepper -tool ag  -grepprg ag --vimgrep -G '^.+\.txt'<cr>
nnoremap <leader>*   :Grepper -tool ack -cword -noprompt<cr>

" Pymode customisation
let g:pymode_lint_ignore = "E501,E124,E126,E261,E262,W"
let g:pymode_lint_on_write = 0

" Deoplete
let g:deoplete#enable_at_startup = 1

" Use FZF as CtrlP
nnoremap <C-p> :FZF<cr>

" FZF ignore
" let g:fzf_source = 'find * -name .git -prune -o -name staticfiles -prune -o -type f -print -o -type d -print -o -type l -print'

" airline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


" vim_current_word options
hi CurrentWordTwins cterm=bold,underline
hi CurrentWord cterm=underline
let g:vim_current_word#enabled = 1
