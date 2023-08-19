require("neorg").setup ({
  load = {
    ["core.defaults"] = {}, -- Loads default behaviour
    ["core.concealer"] = {}, -- Adds pretty icons to your documents
    ["core.summary"] = { config = {
      strategy = "default",
    }},
    ["core.qol.todo_items"] = { config = {
      create_todo_items = true,
      create_todo_parents = true,
    }},
    ["core.dirman"] = { -- Manages Neorg workspaces
      config = {
        workspaces = {
          notes = "~/notes",
        },
        index = "index.norg",
        default_workspace = "notes",
      },
    },
  },
}
)
