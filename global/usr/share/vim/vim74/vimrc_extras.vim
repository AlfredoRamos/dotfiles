"
" /usr/share/vim/vim74/vimrc_extras.vim
"

" Show line number
set number

" Set Monokai color scheme
" https://aur.archlinux.org/packages/vim-monokai-git
colorscheme monokai

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