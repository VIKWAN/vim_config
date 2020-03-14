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
filetype plugin on
filetype indent on
set noexpandtab

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
command! MakeTags !ctags -R .
" ^] to jump on tag under cursor
" g^] for  ambiguous tags
" ^t to jump back

" autocomplete 
" search in |ins-completion|
" ^x^n : search in the the current file
" ^x^f : search for filenames
" ^x^] : search in tags only
" ^n : anything by the 'complete' option
" ^n ^p : navigation in menu

" file browsing
" open with :Vex, :Sex
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide=',\(^|\s\s)\zs\.\S\+'
