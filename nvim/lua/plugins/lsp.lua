return {
  "neovim/nvim-lspconfig",
  opts = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()

    -- Go to implementation
    keys[#keys + 1] = { "gI", false }
    keys[#keys + 1] = { "gj", ":Telescope lsp_implementations<cr>", desc = "[G]oto Implementation ↓" }

    -- References
    keys[#keys + 1] = { "gr", false }
    keys[#keys + 1] = { "gk", ":Telescope lsp_references<cr>", desc = "[G]oto References ↑" }
    keys[#keys + 1] = { "gi", ":Telescope lsp_incoming_calls<cr>", desc = "[G]oto [I]ngoing calls" }
    keys[#keys + 1] = { "go", ":Telescope lsp_outgoing_calls<cr>", desc = "[G]oto [O]ngoing calls" }

    -- Definition
    keys[#keys + 1] = { "gd", false }
    keys[#keys + 1] = { "gh", ":Telescope lsp_definitions<cr>", desc = "[G]oto Definition ←" }
    -- Type Definition
    keys[#keys + 1] = { "gy", false }
    keys[#keys + 1] = { "gl", ":Telescope lsp_type_definitions<cr>", desc = "[G]oto Type Definition →" }
    -- Remap signature help when in insert
    keys[#keys + 1] = { "<c-k>", mode = "i", false }
    keys[#keys + 1] = { "<c-h>", vim.lsp.buf.signature_help, mode = "i", desc = "Show signature ←" }
    -- keys[#keys + 1] = { "<c-j>", vim.lsp.buf.select_next_item, mode = "i", desc = "Show signature ←" }
  end,
}
