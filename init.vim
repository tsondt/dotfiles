call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'

Plug 'chriskempson/base16-vim'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'edkolev/tmuxline.vim'

Plug 'edkolev/promptline.vim'

Plug 'scrooloose/nerdtree'

Plug 'scrooloose/nerdcommenter'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()

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
"set background=dark
set termguicolors
set timeoutlen=500 ttimeoutlen=0

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

command! -bang -nargs=* Find call fzf#vim#grep('grep --line-number --ignore-case --recursive --exclude=".git/*" --color="always" '.shellescape(<q-args>), 0, <bang>0)

colorscheme base16-paraiso
