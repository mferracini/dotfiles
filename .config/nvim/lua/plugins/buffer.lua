require('bufdel').setup {
  next = 'tabs',
  quit = false,  -- do not quit Neovim when last buffer is closed
}
vim.api.nvim_set_keymap("n", "<leader>bd", ":BufDel<CR>", { noremap = true, silent = true })
vim.opt.termguicolors = true
require("bufferline").setup{}
