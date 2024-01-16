-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map({ "v" }, "<leader>/", "gc", { desc = "Toggle Comment", remap = true })

map({ "n" }, "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })

map({ "n", "o", "x" }, "gs", "gz", { desc = "Mini Surround", remap = true })

map({ "n" }, "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "window left", silent = true })
map({ "n" }, "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "window right", silent = true })
map({ "n" }, "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "window down", silent = true })
map({ "n" }, "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "window up", silent = true })

map(
  { "n" },
  "<leader>nn",
  "<cmd>Neogen func<CR>",
  { desc = "Generate documentation for function", silent = true, noremap = true }
)
map(
  { "n" },
  "<leader>nc",
  "<cmd>Neogen class<CR>",
  { desc = "Generate documentation for class", silent = true, noremap = true }
)
map(
  { "n" },
  "<leader>nf",
  "<cmd>Neogen file<CR>",
  { desc = "Generate documentation for file", silent = true, noremap = true }
)
map(
  { "n" },
  "<leader>nt",
  "<cmd>Neogen type<CR>",
  { desc = "Generate documentation for type", silent = true, noremap = true }
)
