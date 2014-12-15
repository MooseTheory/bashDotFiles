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

" Make unnecessary whitespace more obvious.
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

" Automatically remove trailing whitespace on write.
autocmd BufWritePre * :%s/\s\+$//e

" Make .aspx files highlight and indent as html files.
au BufRead,BufNewFile *.aspx set filetype=html

" Fix backspace in cygwin.
if has('unix')
  let s:uname = system('uname -o')
  if s:uname == "Cygwin\n"
    set backspace=indent,eol,start
  endif
endif

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

" Turn on line numbers
" run "set number!" to turn that off.
set number

" Show the bottom status bar always.
set laststatus=2

" Make my localdeploy script run every time I write to my JS or ASPX file.
autocmd BufWritePost SetupPolling.* !./localdeploy.sh

" Go Language vim compiler plugin
autocmd FileType go compiler go

" Go language gofmt
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" Set up a absolute to relative line number toggle.
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

map <C-t> <esc>:tabnew<CR>
