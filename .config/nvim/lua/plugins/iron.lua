local iron = require("iron.core")
local view = require("iron.view")

-- iron also has a list of commands, see :h iron-commands for all available commands
vim.keymap.set('n', '<localleader>rs', '<cmd>IronRepl<cr>')
vim.keymap.set('n', '<localleader>rr', '<cmd>IronRestart<cr>')
vim.keymap.set('n', '<localleader>rf', '<cmd>IronFocus<cr>')
vim.keymap.set('n', '<localleader>rh', '<cmd>IronHide<cr>')

-- iron.core.add_repl_definitions{
--   python = {
--     venv_python = {
--       -- Note that the command is a string and not a table.
--       -- This allows neovims job to find the correct binary throught the path.
--       command = ".venv/bin/python"
--     }
--   }
-- }
-- iron.core.set_config{preferred = {python = "venv_python"}}

iron.setup {
  config = {
    -- Whether a repl should be discarded or not
    scratch_repl = true,
    -- Your repl definitions come here
    repl_definition = {
      python = {
          command = {".venv/bin/python"}
      },

      sh = {
        -- Can be a table or a function that
        -- returns a table (see below)
        command = {"zsh"}
      },
    },
    -- How the repl window will be displayed
    -- See below for more information
    repl_open_cmd = view.split.vertical.botright(.40),
    -- repl_open_cmd = require('iron.view').bottom(40),
  },
  -- Iron doesn't set keymaps by default anymore.
  -- You can set them here or manually add keymaps to the functions in iron.core
  keymaps = {
    visual_send = "<localleader>sc",
    send_file = "<localleader>sf",
    send_line = "<localleader>sl",
    cr = "<localleader>s<cr>",
    interrupt = "<localleader>s<localleader>",
    exit = "<localleader>sq",
    clear = "<localleader>cl",
  },
  -- If the highlight is on, you can change how it looks
  -- For the available options, check nvim_set_hl
  highlight = {
    italic = true
  },
  ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
}


