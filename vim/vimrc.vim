silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()
execute pathogen#infect()
syntax on
filetype plugin indent on
