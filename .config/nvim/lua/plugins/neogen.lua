local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", opts)


local cmp = require('cmp')
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
    },
  }
})

cmp.setup {
    mapping = {
        ["<tab>"] = cmp.mapping(function(fallback)
            if neogen.jumpable() then
                neogen.jump_next()
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
        ["<S-tab>"] = cmp.mapping(function(fallback)
            if neogen.jumpable(true) then
                neogen.jump_prev()
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
    },
}
