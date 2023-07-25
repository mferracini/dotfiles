-- First load general vim option config and general keymaps
require("config.options")
require("config.keymaps")
-- Then load plugin manager.
-- Plugin manager do not config plugins only general conf and dependencies between plugins, configuration is done per plugin on plugins folder
require("config.lazy")
-- Finally Load all plugins configuration. Any change to the funcionalitty of a specific plugin or group of plugins must be changed in the
-- correspondent file inside the plugins folder
--
--
require("plugins")

-- Load coloscheme that will be used as default one
vim.cmd.colorscheme "catppuccin"


-- Process to include/exclude plugins
-- remove/comment the respective plugin in the config.lazy file.
-- remove/comment the respective plugin config in the plugins.* folder
