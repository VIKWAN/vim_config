"editor properties
set nocompatible
syntax on
set number
set relativenumber
set showmatch
set visualbell
set ruler
set undolevels=100
set backspace=indent,eol,start

" indent
filetype plugin on
filetype indent on
set expandtab

" html/css/js indent
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=0
autocmd Filetype css  setlocal ts=2 sw=2 sts=0
autocmd Filetype javascript   setlocal ts=2 sw=2 sts=0

" c/cpp/rust indent
autocmd Filetype c    setlocal ts=4 sw=4 sts=0
autocmd Filetype cpp  setlocal ts=4 sw=4 sts=0

" file search
" search into subfolders
" provides tab-completion for all file-related tasks
set path+=**
" display all matching files in a menu
set wildmenu

" tag jumping
" create the tag file (require ctags)
"command! MakeTags !ctags -R --exclude=.git --exclude=node_modules --exclude=test --exclude=react-native
command! MakeTags !ctags -R --languages=ruby,javascript --exclude=.git --exclude=log --exclude=node_modules --exclude=react-native -f TAGS 
" ctrl-] to jump on tag under cursor
" g^] for  ambiguous tags
" ctrl-t to jump back

" autocomplete 
" search in |ins-completion|
" ^x^n : search in the the current file
" ^x^f : search for filenames
" ^x^] : search in tags only
" ^n : anything by the 'complete' option
" ^n ^p : navigation in menu

" NERDTREE configuration
map <silent> <C-n> :NERDTreeToggle<CR>

" PLUG
call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
call plug#end()

colorscheme palenight

let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = "never"

" Only run linters from ale_linters
let g:ale_linters_explicit = 1

" Linters: show warnings and errors
let g:ale_linters = {
                        \ 'ruby': ['rubocop'],
                        \ 'javascript': ['eslint']
                        \}

" Fixers: fix/format code automatically
let g:ale_fixers = {
                        \  'javascript': ['prettier']
                        \}

" Run fixers at save time only
let g:ale_fix_on_save = 1

" Fugitive Conflict Resolution
let mapleader=","
nnoremap <leader>gd :Gvdiff!<CR>
nnoremap gdl :diffget //2<CR>
nnoremap gdr :diffget //3<CR>

" status bar
set laststatus=2

" quit insert mode
inoremap jk <esc>
inoremap kj <esc>

let g:indentLine_leadingSpaceChar='·'
let g:indentLine_leadingSpaceEnabled='1'
set hlsearch

" doctolib special
function! CopyFileAndLine()
        let @+ = expand('%:p').':'.line('.')
endfunction
inoremap <silent> <F1> <Esc>:call CopyFileAndLine()<CR>
nnoremap <silent> <F1> :call CopyFileAndLine()<CR>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
