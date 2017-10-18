silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()
execute pathogen#infect()
syntax on
filetype plugin indent on
colo solarized
set relativenumber
set number
set tabstop=4
set autoindent
