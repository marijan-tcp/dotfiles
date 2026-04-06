return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        handlers = {
          ["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
            -- Discard all diagnostics from pyright
          end,
        },
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "off",
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
