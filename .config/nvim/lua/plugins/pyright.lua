return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "off",
              diagnosticMode = "none",  -- or "OpenFilesOnly"
            },
          },
        },
      },
      ruff = {
        on_attach = function(client, bufnr)
          client.server_capabilities.hoverProvider = false
        end,
      },
    },
  },
}
