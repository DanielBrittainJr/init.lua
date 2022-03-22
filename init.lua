 --NVIM RC
--******************************************************************************************
--whitespace
vim.bo.expandtab = true --spaces to be used in place of tab characters
vim.bo.shiftwidth = 4 --amount of whitespace to insert or remove using indent command in normal mode
vim.bo.tabstop = 4 --fine tunes amount of white space inserted
vim.bo.autoindent = true --copies current line indent to next line
vim.bo.smartindent = true --understands braces

--search
vim.go.hlsearch = true
vim.go.incsearch = true
vim.go.ignorecase = true --will find the, The, or THE
vim.go.smartcase = true --uppercase searches are case sensitive

vim.go.scrolloff = 3 --how many lines are shown above and below cursor

vim.wo.number = true

--leave term mode with esc
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true, silent =true})

--leave term with esc
--:tnoremap <Esc> <C-\><C-n>
--

--vim plug in lua
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.AppData/Local/nvim-data/site/autoload/')

--Plug
Plug 'gruvbox-community/gruvbox'

vim.call('plug#end')

--lazy way no lua vimscript
vim.cmd [[

set background=dark
colorscheme gruvbox

]]
