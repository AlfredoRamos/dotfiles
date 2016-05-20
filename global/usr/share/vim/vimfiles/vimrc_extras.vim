" Set and override default options
" Maintainer: Alfredo Ramos <alfredo.ramos@yandex.com>
" Last change: 2016-01-15

" Show line number
set number

" Set Monokai color scheme
" https://aur.archlinux.org/packages/vim-monokai-git
" colorscheme monokai

" Set Tomorrow Night Eighties color scheme
" https://aur.archlinux.org/packages/tomorrow-theme-vim-git/
colorscheme Tomorrow-Night-Eighties

" Enable system's clipboard
if has('clipboard')
  set clipboard=unnamedplus
endif

" Change default backup directory (absolute path)
set backupdir=/tmp
set directory=/tmp
set undodir=/tmp

" Set 4 spaces tab size
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" Show max text width
set colorcolumn=+1

" Backspacing
set backspace=indent,eol,start

" Statusline
if has('statusline')
  set laststatus=2             " Always show statusline
  set statusline=              " Clear statusline
  set statusline+=[%n]         " Buffer number
  set statusline+=\ [%F]       " Filename
  set statusline+=\ [%{&ff}\|  " File format
  set statusline+=%{&fenc}]    " File encoding
  set statusline+=\ %y         " Filetype
  set statusline+=%m           " Modified flag
  set statusline+=%r           " Read-only flag
  set statusline+=%=           " Separator
  set statusline+=[%c,         " Column
  set statusline+=%l/%L]       " Current line/Total lines
endif
