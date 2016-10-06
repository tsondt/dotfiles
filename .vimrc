set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'edkolev/tmuxline.vim'

Plugin 'edkolev/promptline.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/nerdcommenter'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on
syntax on
set encoding=utf-8
" show all characters
set list
set listchars=tab:→·,trail:·,eol:¬
set number
"set relativenumber
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set laststatus=2
set autoindent
set scrolloff=4
set showcmd
set wildmenu
set wildmode=list:longest
"set visualbell
"set cursorline
set ttyfast
set undofile
set colorcolumn=80
" set background=dark

" fix vimdiff colors
highlight DiffAdd             ctermfg=15 ctermbg=10 gui=none guifg=bg guibg=Red
highlight DiffDelete          ctermfg=07 ctermbg=09 gui=none guifg=bg guibg=Red
highlight DiffChange          ctermfg=07 ctermbg=11 gui=none guifg=bg guibg=Red
highlight DiffText cterm=bold ctermfg=15 ctermbg=09 gui=none guifg=bg guibg=Red

" highlight trailing whitespaces
highlight ExtraWhitespace                ctermbg=09 gui=none guifg=bg guibg=Red
match ExtraWhitespace /\s\+$/

" NERDTree toggle with <C-n>
nnoremap <C-n> :NERDTreeToggle<CR>

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" use CtrlP with ag
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" vim-airline
let g:airline_powerline_fonts=1
let g:airline_theme='base16_paraiso'
let g:airline#extensions#tmuxline#enabled = 0
let g:airline#extensions#tabline#enabled = 1
