return {
  "lervag/vimtex",
  ft = "tex",
  init = function()
    vim.g.vimtex_compiler_latexmk = {
      out_dir = 'out',
    }
  end,
}
