return {
  {
    "catppuccin/nvim",
    opts = {
      flavour = "macchiato",
      custom_highlights = function(colors)
        return {
          GitSignsAdd = { fg = colors.green },
          GitSignsChange = { fg = colors.peach },
          GitSignsDelete = { fg = colors.red },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-nvim",
    },
  },
}
