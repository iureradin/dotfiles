call plug#begin()
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
call plug#end()


" Global Sets """"""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set number
set mouse=a
set cursorline
set incsearch
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set smarttab
set smartcase
set ignorecase
set scrolloff=8
set encoding=utf-8
set splitright
set splitbelow
filetype on
filetype plugin on
filetype indent on


" Themes """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
colorscheme codedark



" Remaps """""""""""""""""""""""""""
" remaps aqui



" autocmd """""""""""""""""""""""""
function! HighlightWordUnderCursor()
    if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
        exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/'
    else
        match none
    endif
endfunction

autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()
