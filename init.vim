call plug#begin(stdpath('data') . '/plugged') 
Plug 'SirVer/ultisnips'
Plug 'lervag/vimtex'
Plug 'arcticicestudio/nord-vim'
"Plug 'jacoborus/tender.vim'
"Plug 'mhartington/oceanic-next'
"Plug 'sainnhe/everforest'
"Plug 'shaunsingh/nord.nvim'
"Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }
Plug 'vim-airline/vim-airline'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'Pocco81/true-zen.nvim'
"Plug 'tricktux/pomodoro.vim'
"Plug 'dbinagi/nomodoro'
"Plug 'MunifTanjim/nui.nvim'
"Plug 'jackMort/pommodoro-clock.nvim'
"Plug 'mkropat/vim-tt'
Plug '1rv/vim-diary'
Plug 'nvim-tree/nvim-web-devicons'
"Plug 'akinsho/bufferline.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'folke/which-key.nvim'
call plug#end()

let mapleader = " "

lua << EOF
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
    },
    filters = {
        dotfiles = true,
    },
})
--[[
require("bufferline").setup({
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "Files",
                text_align = "left",
                separator = true
            }
        },
    }
})
--]]
EOF

nnoremap <silent> <C-h> <C-W>h
nnoremap <silent> <C-l> <C-W>l
nnoremap <silent> <leader>bd :bdelete<CR>
nnoremap <silent> <leader>e :NvimTreeToggle<CR>

filetype plugin on

set termguicolors
set t_Co=256

let g:airline_section_x = '%{&filetype}'

syntax enable
colorscheme nord


let g:UltiSnipsExpandTrigger = '<Tab>' " use tab to expand snippet
let g:UltiSnipsJumpForwardTrigger = '<Tab>' " use tab to move fwd
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>' "use shift-tab to move bkwd

let g:UltiSnipsSnippetDirectories=['C:\Users\dcche\.config\nvim\UltiSnips']

filetype plugin indent on


"tab stuff
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"line numbering
set number relativenumber
highlight LineNr ctermfg=DarkGrey
hi CursorLineNr guifg=#B48EAD
set cursorline
set cursorlineopt=number


"autoscroll
set scrolloff=8

"text wrap
set breakindent

" save file
nnoremap <C-s> :wa<CR>
imap <c-s> <Esc>:wa<CR>a

"nice jk
nnoremap j gj
nnoremap k gk

" line moving dark-art
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"delete surrounding (), [], {}, $$ etc.
"nnoremap d <S-5>

let g:tex_flavor = 'latex'

let g:diary_use_defaults = 1
