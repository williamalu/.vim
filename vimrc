" Pathogen
execute pathogen#infect()

" Text color
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
highlight Comment ctermfg=DarkBlue "Comments
highlight Constant ctermfg=LightRed "Things inside of double quotes
highlight Special ctermfg=Magenta "%s, \n, etc.

" Instant markdown
filetype plugin on
let g:instant_markdown_allow_unsafe_content = 1 "allow scripts to run
