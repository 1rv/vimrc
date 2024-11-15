call plug#begin(stdpath('data') . '/plugged') 
Plug 'lervag/vimtex'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'Pocco81/true-zen.nvim'
Plug '1rv/vim-diary'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'folke/which-key.nvim'
Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'}
Plug 'tpope/vim-repeat'
Plug 'ggandor/leap.nvim'

Plug 'tckmn/hotdog.vim'

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

"plugin stuff"

lua << EOF
require("bufferline").setup{}
EOF

let g:airline_section_x = '%{&filetype}'

syntax enable
colorscheme nord


"tab stuff
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"LUAsnip========================================
"
lua << EOF
require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
})
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})
EOF


imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'

imap <silent><expr> <C-f> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-f>'
smap <silent><expr> <C-f> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-f>'


filetype plugin indent on



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


let g:tex_flavor = 'latex'

let g:diary_use_defaults = 1

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
