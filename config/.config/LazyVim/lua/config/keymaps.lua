-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation using only ctrl+hjkl
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- required in which-key plugin spec in plugins/ui.lua as `require 'config.keymap'`
-- Terminal launch
local wk = require("which-key")

local function new_terminal(lang)
  vim.cmd("vsplit term://" .. lang)
end
local function new_h_terminal(lang)
  vim.cmd("split term://" .. lang)
end

local function new_terminal_python()
  new_terminal("python")
end
local function new_h_terminal_python()
  new_h_terminal("python")
end

local function new_h_terminal_ipython()
  new_h_terminal("ipython --no-confirm-exit")
end

local function new_terminal_ipython()
  new_terminal("ipython --no-confirm-exit")
end

local function new_terminal_shell()
  new_terminal("$SHELL")
end

local function new_h_terminal_shell()
  new_h_terminal("$SHELL")
end

-- normal mode with <leader>
wk.add({
  {
    { "<leader>ct", group = "[c]ode [t]terminal" },
    { "<leader>cti", new_terminal_ipython, desc = "new [i]python terminal" },
    { "<leader>ctI", new_h_terminal_ipython, desc = "new [i]python terminal" },
    { "<leader>ctN", new_h_terminal_shell, desc = "[n]ew terminal with shell" },
    { "<leader>ctn", new_terminal_shell, desc = "[n]ew terminal with shell" },
    { "<leader>ctp", new_terminal_python, desc = "new [p]ython terminal" },
    { "<leader>ctP", new_h_terminal_python, desc = "new [p]ython terminal" },
  },
}, { mode = "n" })
