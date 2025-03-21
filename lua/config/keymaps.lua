-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }
-- Shorten function name
local keymap = vim.keymap.set
-- Movement remaps (vim style)
keymap("n", "ö", "l", opts) -- Right
keymap("n", "l", "j", opts) -- Down
keymap("n", "j", "h", opts) -- Left
-- Also add for visual mode
keymap("v", "ö", "l", opts)
keymap("v", "l", "j", opts)
keymap("v", "j", "h", opts)
-- And operator-pending mode (for commands like d, y, c)
keymap("o", "ö", "l", opts)
keymap("o", "l", "j", opts)
keymap("o", "j", "h", opts)
