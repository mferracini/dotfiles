-- language = en_US
-- First load general vim option config and general keymaps
require("config.options")
require("config.keymaps")
-- Then load plugin manager.
-- Plugin manager do not config plugins only general conf and dependencies between plugins, configuration is done per plugin on plugins folder
require("config.lazy")

-- load plugins configuration
-- it is needed to require each plugin in init file of the plugins folder
require("plugins")
-- Load coloscheme that will be used as default one
--vim.cmd.colorscheme "catppuccin"


-- vim: ts=2 sts=2 sw=2 et
