local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap


--navigation between windows with ctrl+hjkl
keymap('n', '<C-h>', ':wincmd h<CR>', opts)
keymap('n', '<C-l>', ':wincmd l<CR>', opts)
keymap('n', '<C-j>', ':wincmd j<CR>', opts)
keymap('n', '<C-k>', ':wincmd k<CR>', opts)
