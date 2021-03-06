" Pathogen
execute pathogen#infect()

" Allow colors in terminal
"set t_Co=256 "Fix color issue with airline themes

" Turn on line numbers
set number

" Define tab characteristics
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Disable auto-commenting after a line with comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Color scheme
syntax enable
colorscheme solarized

" Instant markdown
filetype plugin on
let g:instant_markdown_allow_unsafe_content=1 "allow scripts to run

" Vim Airline
set laststatus=2 "Make the tabline show up before splits
let g:airline_theme='solarized' "Set airline theme

" Map Enter key to select current tab complete option in VimCompletesMe
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Leader shortcuts
let mapleader="," " , instead of \

" Make for files
nmap <silent> <leader>mp2 <Esc>:w<CR>:!clear;python2 %<CR>
nmap <silent> <leader>mp3 <Esc>:w<CR>:!clear;python3 %<CR>

" Warn when over 80 characters in a row
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
