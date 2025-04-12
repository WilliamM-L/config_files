-- consulted https://github.com/folke/snacks.nvim/blob/main/docs/lazygit.md
-- don't really understand how this works, but when I add this the border is not too dark anymore
return
{
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    lazygit = {
      ---@class snacks.lazygit.Config: snacks.terminal.Opts
      ---@field args? string[]
      ---@field theme? snacks.lazygit.Theme
      {
        -- Theme for lazygit
        theme = {
          inactiveBorderColor        = { fg = "#868896" },
        },
      }
    }
  }
}
