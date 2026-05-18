return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "off", -- or "basic"
              diagnosticMode = "openFilesOnly", -- or "none"
            },
          },
        },
      },
    },
  },
}
