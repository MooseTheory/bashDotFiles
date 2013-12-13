set nocompatible

" Enable filetype plugins
filetype plugin on
filetype indent on

" Enable syntax highlighting
syntax enable

" Use spaces instead of tabs
set expandtab
" Use 'smart' tabs
set smarttab
" 1 tab = 2 spaces
set shiftwidth=2
set tabstop=2

" Auto indent
set ai
" Smart indent
set si

" Set up astyle.
autocmd BufNewFile,BufRead *.h set formatprg=astyle\ --indent=spaces=2\ --break-blocks\ --pad-oper\ --align-pointer=type\ --style=google\ --add-brackets\ --convert-tabs\ --max-code-length=80
autocmd BufNewFile,BufRead *.cpp set formatprg=astyle\ --indent=spaces=2\ --break-blocks\ --pad-oper\ --align-pointer=type\ --style=google\ --add-brackets\ --convert-tabs\ --max-code-length=80
autocmd BufNewFile,BufRead *.d set formatprg=astyle\ --indent=spaces=2\ --break-blocks\ --pad-oper\ --align-pointer=type\ --style=google\ --add-brackets\ --convert-tabs\ --max-code-length=80

" Make the 81st column stand out.
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" Remap semicolon to colon.
nnoremap ; :

" Enable pathogen.vim
execute pathogen#infect()

" If buffer modified, update any 'Last modified: ' in the first 20 lines.
" 'Last modified: ' can have up to 10 characters before (they are retained).
" Restores cursor and window position using save_cursor variable.
function! LastModified()
  if &modified
    let save_cursor = getpos(".")
    let n = min([20, line("$")])
    keepjumps exe '1,' . n . 's#^\(.\{,10}Last modified: \).*#\1' .
                            \ strftime('%a %b %d, %Y  %I:%M%p') . '#e'
    call histdel('search', -1)
    call setpos('.', save_cursor)
  endif
endfun
autocmd BufWritePre * call LastModified()
