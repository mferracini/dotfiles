local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate({type = 'func' })<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>nc", ":lua require('neogen').generate({ type = 'class' })<CR>", opts)

local neogen = require('neogen')


neogen.setup({
  snippet_engine = "luasnip",
  languages = {
    lua = {
      template = {
        annotation_convention = "emmylua"
      }
    },
    python = {
      template = {annotation_convention = "reST"}
      -- template = {annotation_convention = "numpydoc"}
    },
  }
})


