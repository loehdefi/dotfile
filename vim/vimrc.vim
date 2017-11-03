" compatibility with screen
if match($TERM, "screen")!=-1
    set term=xterm
endif
set t_Co=256
set encoding=utf-8

" load pluging via pathogen
silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()
execute pathogen#infect()

syntax on
filetype plugin indent on
set relativenumber
set number
set tabstop=4
set autoindent
set wildmenu
"set foldmethod=syntax
"set foldcolumn=1
set expandtab
set shiftwidth=4
set smartindent
set hls
set ignorecase
set hidden

let g:tagbar_ctags_bin = '$HOME/bin/ctags'
"augroup filetype_lua
    "autocmd!
    "autocmd FileType lua setlocal iskeyword+=:
"augroup END

set previewheight=20
autocmd VimEnter * NERDTree
let g:NERDTreeQuitOnOpen = 1
"autocmd FileType * nested :call tagbar#autoopen(0)
nnoremap <silent> <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F3> :TagbarToggle<CR>

" Colors
colo solarized
let g:airline_theme='dark'
set background=dark
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
highlight Folded ctermbg=NONE
highlight FoldColumn ctermbg=NONE
highlight LineNr ctermbg=NONE
highlight SpecialKey ctermbg=NONE
highlight DiffAdd ctermbg=NONE
highlight DiffDelete ctermbg=NONE
highlight DiffChange ctermbg=NONE
highlight DiffText ctermbg=NONE
highlight CursorColumn ctermbg=NONE
highlight CursorLine ctermbg=NONE
highlight ColorColumn ctermbg=NONE

" Airline show bufferline
let g:airline#extensions#tabline#enabled = 1

" General settings
let mapleader = ","
nnoremap . :
nnoremap : <nop>
vnoremap . :
vnoremap : <nop>
nnoremap - .
inoremap jk <ESC>
vnoremap jk <ESC>
inoremap <ESC> <nop>
nnoremap <leader>ev :vsplit ~/.vimrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>
nnoremap * *``
nnoremap <C-+> <C-]>
nnoremap <leader>a <C-a> 
nnoremap <leader>x <C-x> 

" Refreshing and bufferchanges
nnoremap <F4> :b#<CR>:bd #<CR>
nnoremap <F5> :e<CR>
nnoremap <F6> :b#<CR>
nnoremap <F8> :bnext<CR>
nnoremap <F7> :bp<CR>

" Run script on cluster and open log file
nnoremap <silent> <F9> :! sbatch run_sbv19.sh<CR>
set wildcharm=<S-Tab>
nnoremap <F10> :bd *.out<C-a><CR>:split slurm-<S-Tab><S-Tab><S-Tab><CR><C-w>j<C-w>x
"nnoremap <F12> :! scancel --user=loehdefink<CR>
nnoremap <F12> :Gstatus<CR>

" Comments
autocmd FileType lua nnoremap <buffer> <leader>c I--<esc>
autocmd FileType sh nnoremap <buffer> <leader>c I#<esc>
autocmd FileType vim nnoremap <buffer> <leader>c I"<esc>
