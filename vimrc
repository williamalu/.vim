" Pathogen
execute pathogen#infect()

" Define tab characteristics
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Color scheme
" highlight Comment ctermfg=DarkBlue "Comments
" highlight Constant ctermfg=LightRed "Things inside of double quotes
" highlight Special ctermfg=Magenta "%s, \n, etc.

" Instant markdown
filetype plugin on
let g:instant_markdown_allow_unsafe_content=1 "allow scripts to run

" Vim Airline
set laststatus=2 "Make the tabline show up before splits
let g:airline_theme='wombat' "Set airline theme
set t_Co=256 "Fix color issue with airline themes

" Disable auto-commenting after a line with comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
