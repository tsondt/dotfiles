set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Bundle 'edkolev/tmuxline.vim'

Bundle 'edkolev/promptline.vim'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on
syntax on
set encoding=utf-8
" show all characters
set list
set listchars=tab:→·,trail:·,eol:¬
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set laststatus=2
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

" vim-airline
let g:airline_powerline_fonts=1
let g:airline_theme='base16_paraiso'
let g:airline#extensions#tmuxline#enabled = 0
