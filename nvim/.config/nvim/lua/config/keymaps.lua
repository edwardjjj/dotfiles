-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map({ "v" }, "<leader>/", "gc", { desc = "Toggle Comment", remap = true })

map({ "n" }, "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })

map({ "n", "o", "x" }, "gs", "gz", { desc = "Mini Surround", remap = true })
