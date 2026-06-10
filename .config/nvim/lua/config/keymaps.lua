-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Ctrl+` toggles terminal (replaces Ctrl+/)
vim.keymap.set({ "n", "i", "t" }, "<C-`>", function()
  Snacks.terminal.toggle(nil, {})
  -- Snacks.terminal.focus(nil, { cwd = LazyVim.root() })
end, { desc = "Toggle terminal" })

-- Ctrl+/ toggles comment
vim.keymap.set("n", "<C-/>", "gcc", { remap = true, silent = true, desc = "Toggle comment" })
vim.keymap.set("v", "<C-/>", "gc", { remap = true, silent = true, desc = "Toggle comment" })
vim.keymap.set("i", "<C-/>", "<C-o>gcc", { remap = true, silent = true, desc = "Toggle comment" })

-- Indent and unindent in insert mode
vim.keymap.set("i", "<S-Tab>", "<C-d>", { desc = "Unindent" })

vim.keymap.set("i", "<C-BS>", "<C-w>", { desc = "Delete word" })
vim.keymap.set("i", "<C-Del>", "<C-o>dw", { desc = "Delete word after cursor" })

