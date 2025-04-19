-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set({ "i", "v" }, "df", "<Esc>")

-- CODE NAVIGATION

-- Go back
vim.keymap.del({"n"}, "<C-l>")
vim.keymap.set({ "n" }, "<C-h>", "<C-o>", { silent = true })
vim.keymap.set({ "n" }, "<C-l>", "<C-i>", { silent = true })

-- Reselect after pasting
vim.keymap.set({ "n" }, "gV", "`[v`]", { silent = true })

-- Switch windows
vim.keymap.set({"n"}, "<A-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set({"n"}, "<A-l>", "<C-w>l", { desc = "Go to right window" })
vim.keymap.set({"n"}, "<A-j>", "<C-w>j", { desc = "Go to down window" })
vim.keymap.set({"n"}, "<A-k>", "<C-w>k", { desc = "Go to up window" })

--
-- vim.keymap.set({ "n", "i", "v" }, "<C-j>", "<C-n>", { silent = true })
-- vim.keymap.set({ "n", "i", "v" }, "<C-k>", "<C-p>", { silent = true })
