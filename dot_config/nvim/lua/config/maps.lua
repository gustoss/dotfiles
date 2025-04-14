local g = vim.g
local kset = vim.keymap.set
local opts = { noremap = true, silent = true }

kset('', '<Space>', '<Nop>', opts)
g.mapleader = ' '

-- Windows navigation
kset('n', '<C-h>',  '<C-w>h', opts)
kset('n', '<C-k>',  '<C-w>k', opts)
kset('n', '<C-j>',  '<C-w>j', opts)
kset('n', '<C-l>',  '<C-w>l', opts)

kset('n', 'o',  'o<Esc>k', opts)
kset('n', 'oo',  'o', opts)
kset('n', 'O',  'O<Esc>j', opts)
kset('n', 'OO',  'O', opts)

kset('', '<C-;>', 'gcc', opts)
kset('n', '<leader>q', ':qa<CR>', opts)
kset('n', '<leader>qq', ':qa!<CR>', opts)
kset('n', '<leader>w', ':w<CR>', opts)
kset('n', '<leader>wq', ':wqa<CR>', opts)
kset('n', '<leader>wqq', ':wqa!<CR>', opts)

-- Tree File
local tree = require('nvim-tree.api')
kset('', '<C-b>', tree.tree.open, opts)

-- ZenMode
kset('', '<leader>zz', ':ZenMode<CR>', opts)

-- Telescope
local tele = require('telescope.builtin')
kset('n', '<leader>ff', tele.find_files, opts)
kset('n', '<leader>fg', tele.live_grep, opts)
kset('n', '<leader>fd', tele.grep_string, opts)
kset('n', '<leader>fS', tele.lsp_dynamic_workspace_symbols, opts)
kset('n', '<leader>fs', tele.lsp_document_symbols, opts)
kset('n', '<leader>fb', tele.buffers, opts)

-- Tabline
kset('', '<A-Right>', 'gt', opts)
kset('', '<A-Left>', 'gT', opts)

-- YankBank
kset('', '<leader>y', ':YankBank<CR>', opts)

