-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "i", "v" }, "df", "<Esc>")

-- CODE NAVIGATION

-- Go back
vim.keymap.set({ "n" }, "<C-h>", "<C-t>", { silent = true })

-- Reselect after pasting
vim.keymap.set({ "n" }, "gV", "`[v`]", { silent = true })

-- Switch windows
vim.keymap.set({"n"}, "<C-A-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set({"n"}, "<C-A-l>", "<C-w>l", { desc = "Go to right window" })
vim.keymap.del({"n"}, "<C-l>")

--
-- vim.keymap.set({ "n", "i", "v" }, "<C-j>", "<C-n>", { silent = true })
-- vim.keymap.set({ "n", "i", "v" }, "<C-k>", "<C-p>", { silent = true })
