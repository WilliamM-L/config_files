return {
  "okuuva/auto-save.nvim",
  version = "*", -- see https://devhints.io/semver, alternatively use '*' to use the latest tagged release
  cmd = "ASToggle", -- optional for lazy loading on command
  event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
  execution_message = {},
  opts = {
    -- your config goes here
    -- or just leave it empty :)
  },
}
