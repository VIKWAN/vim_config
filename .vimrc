"Pathogen
execute pathogen#infect()
call pathogen#helptags()

" NERDTREE configuration
autocmd VimEnter * NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>

"editor properties
set nocompatible
syntax on
set number
set showmatch
set visualbell
set ruler
set undolevels=100
set backspace=indent,eol,start

" indent
filetype indent on
set noexpandtab

" html/css/js indent
autocmd Filetype html setlocal ts=2 sw=2 sts=0
autocmd Filetype css  setlocal ts=2 sw=2 sts=0
autocmd Filetype javascript   setlocal ts=2 sw=2 sts=0

" c/cpp/rust indent
autocmd Filetype c    setlocal ts=4 sw=4 sts=0 cin
autocmd Filetype cpp  setlocal ts=4 sw=4 sts=0
