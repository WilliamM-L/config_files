-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd.colorscheme("catppuccin-macchiato")
vim.g.autoformat = false -- globally
vim.b.autoformat = false -- buffer-local
