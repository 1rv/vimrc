call plug#begin(stdpath('data') . '/plugged')

Plug 'SirVer/ultisnips'
Plug 'lervag/vimtex'
Plug 'arcticicestudio/nord-vim'

call plug#end()

colorscheme nord

let g:UltiSnipsExpandTrigger = '<Tab>' " use tab to expand snippet
let g:UltiSnipsJumpForwardTrigger = '<Tab>' " use tab to move fwd
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>' "use shift-tab to move bkwd

let g:UltiSnipsSnippetDirectories=['C:\Users\dcche\.config\nvim\UltiSnips']

filetype plugin indent on

syntax enable

"tab stuff
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"line numbering
set number relativenumber
highlight LineNr ctermfg=DarkGrey
hi CursorLineNr guifg=#af00af
set cursorline
set cursorlineopt=number


"autoscroll
set scrolloff=8

"text wrap
set breakindent

let g:tex_flavor = 'latex'

