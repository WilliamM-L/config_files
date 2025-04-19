return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      omnisharp = {
        handlers = {
          ["textDocument/definition"] = function(...)
            return require("omnisharp_extended").handler(...)
          end,
        },
        keys = {
          {
            "gh",
            LazyVim.has("telescope.nvim") and function()
              require("omnisharp_extended").telescope_lsp_definitions()
            end or function()
              require("omnisharp_extended").lsp_definitions()
            end,
            desc = "Goto Definition",
          },
          {
            "gj",
            LazyVim.has("telescope.nvim") and function()
              require("omnisharp_extended").telescope_lsp_implementation()
            end,
            desc = "Goto Implementation",
          },
        },
        enable_roslyn_analyzers = true,
        organize_imports_on_format = true,
        enable_import_completion = true,

        -- Directly set the on_attach callback in the server configuration
        on_attach = function(client, _)
          if client.name == "omnisharp" then
            ---@type string[]
            local tokenModifiers = client.server_capabilities.semanticTokensProvider.legend.tokenModifiers
            for i, v in ipairs(tokenModifiers) do
              tokenModifiers[i] = v:gsub(" ", "_")
            end
            ---@type string[]
            local tokenTypes = client.server_capabilities.semanticTokensProvider.legend.tokenTypes
            for i, v in ipairs(tokenTypes) do
              tokenTypes[i] = v:gsub(" ", "_")
            end
          end
        end,
      },
    }
  }
}
