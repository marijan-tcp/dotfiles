return {
  "dstein64/nvim-scrollview",
  event = "BufReadPost",
  config = function()
    require("scrollview").setup({
      excluded_filetypes = {
        "prompt", "TelescopePrompt", "noice", "notify", "lazy",
        "NvimTree", "neo-tree", "blink-cmp-menu", "dropbar_menu",
      },
      signs_on_startup = { "diagnostics", "search", "gitsigns" },
      current_only = false,
      winblend = 30,
    })
    require("scrollview.contrib.gitsigns").setup()

    vim.api.nvim_create_autocmd("BufEnter", {
      callback = function()
        if vim.b.gitsigns_head then
          vim.api.nvim_exec_autocmds("User", { pattern = "GitSignsUpdate", modeline = false })
        end
      end,
      desc = "Force scrollview gitsigns refresh on git buffers",
    })
  end,
}
