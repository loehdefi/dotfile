" compatibility with screen
if match($TERM, "screen")!=-1
    set term=xterm-256color
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
set foldmethod=syntax
set foldlevelstart=20
"set foldcolumn=1
set expandtab
set shiftwidth=4
set smartindent
set hls
set ignorecase
set hidden
set autoread
set mouse=a
set updatetime=250
set showcmd
set timeoutlen=1000 ttimeoutlen=0

let g:tagbar_ctags_bin = '$HOME/bin/ctags'

set previewheight=20
let g:NERDTreeQuitOnOpen = 1
nnoremap <silent> <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F3> :TagbarToggle<CR>
nnoremap <F4> :Gstatus<CR>
nnoremap <F5> :e<CR>

" Colors
"let g:solarized_termcolors=256
let g:solarized_termtrans=1
colo solarized
"let g:airline_theme='dark'
set background=dark

" General settings
"let mapleader = "\"
map <Space> <leader>
nnoremap . :
nnoremap : <nop>
vnoremap . :
vnoremap : <nop>
nnoremap - .
"inoremap jk <ESC>
"inoremap <ESC> <nop>
nnoremap <leader>ev :vsplit ~/.vimrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>
nnoremap * *``
nnoremap <C-+> <C-]>
nnoremap <leader>a <C-a>
nnoremap <leader>x <C-x>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <F12> <C-]>
inoremap jk <ESC>

" Run script on cluster and open log file
nnoremap <silent> <F9> :! sbatch run_sbv19.sh<CR>
set wildcharm=<S-Tab>
"nnoremap <F10> :bd *.out<C-a><CR><ESC>:split slurm-<S-Tab><S-Tab><S-Tab><CR><C-w>j<C-w>x
nnoremap <F10> :vsplit slurm-<S-Tab><CR>:bd *.out<C-a><CR>:vsplit slurm-<S-Tab><S-Tab><S-Tab><CR><C-w>x<C-w>l

" MiniBufExplorer
let g:miniBufExplBuffersNeeded = 0
let g:miniBufExplShowBufNumbers = 0
let g:miniBufExplCycleArround = 1
let g:miniBufExplForceSyntaxEnable = 1
noremap <F8> :MBEbn<CR>
noremap <F7> :MBEbp<CR>

" EasyMotion
nmap <space><space> <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'

" FT Lua
let g:lua_compiler_name = '/home/loehdefink/lua-5.3.4/src/luac'
let g:lua_interpreter_path = '/home/loehdefink/torch/install/bin/qlua'
"let g:lua_inspect_internal = 0
"let g:lua_complete_omni = 1
let g:lua_internal = 0
let g:lua_inspect_events = 'BufWritePost'
augroup filetype_lua
    autocmd!
    autocmd FileType lua setlocal iskeyword+=:
augroup END

" FixWhiteSpaces
let g:extra_whitespace_ignored_filetypes = ['out']
au BufNewFile,BufRead *.out set filetype=out

" Grepper
nnoremap <leader>g :Grepper<CR>

" Gundo
nnoremap <F6> :GundoToggle<CR>

" ArgWrap
nnoremap <silent> <leader>a :ArgWrap<CR>

" Tabular
nnoremap <leader>t :Tabularize /
vnoremap <leader>t :Tabularize /

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
