-- load plugin manager
require "user.plugins-setup"

-- core setups
require "user.core.options"
require "user.core.keymaps"
require "user.core.colorscheme"

-- plugin specifics
require "user.plugins.statusline"
require "user.plugins.nvim-tree"
require "user.plugins.nvim-cmp"
require "user.plugins.telescope"

-- LSP related
require "user.lsp"
