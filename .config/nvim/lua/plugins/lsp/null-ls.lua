local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    sources = {
        formatting.stylua,
        formatting.ruff,
        formatting.sqlfmt,
        diagnostics.ruff,
        -- diagnostics.mypy,
        -- diagnostics.flake8,
   },
})
