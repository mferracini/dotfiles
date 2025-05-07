return {
  "hkupty/iron.nvim",
  config = function(plugins, opts)
    local iron = require("iron.core")

    iron.setup({
      config = {
        -- Whether a repl should be discarded or not
        scratch_repl = true,
        -- Your repl definitions come here
        repl_definition = {
          python = {
            -- Can be a table or a function that
            -- returns a table (see below)
            command = { "python" },
          },
        },
        -- How the repl window will be displayed
        -- See below for more information
        repl_open_cmd = require("iron.view").right(0.30),
      },
      -- Iron doesn't set keymaps by default anymore.
      -- You can set them here or manually add keymaps to the functions in iron.core
      keymaps = {
        visual_send = "<localleader>rs",
        send_file = "<localleader>rf",
        send_line = "<localleader>rs",
        cr = "<localleader>r<cr>",
        interrupt = "<localleader>rb",
        exit = "<localleader>rq",
        clear = "<localleader>rx",
      },
      -- If the highlight is on, you can change how it looks
      -- For the available options, check nvim_set_hl
      highlight = {
        italic = true,
      },
      ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
    })

    -- iron also has a list of commands, see :h iron-commands for all available commands
    vim.keymap.set("n", "<leader>Rs", "<cmd>IronRepl<cr>")
    vim.keymap.set("n", "<leader>Rr", "<cmd>IronRestart<cr>")
    vim.keymap.set("n", "<leader>Rf", "<cmd>IronFocus<cr>")
    vim.keymap.set("n", "<leader>Rh", "<cmd>IronHide<cr>")
  end,
}
