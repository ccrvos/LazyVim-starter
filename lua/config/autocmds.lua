-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Set conceallevel=0 for .qmd files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "quarto", "qmd" },
  callback = function()
    vim.opt_local.conceallevel = 0
  end,
})

-- For snacks.nvim explorer keymaps
vim.api.nvim_create_autocmd("FileType", {
  pattern = "snacks_picker_list",
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    local opts = { buffer = buf, noremap = true, silent = true }
    vim.keymap.set("n", "j", "h", opts)
    vim.keymap.set("n", "k", "k", opts)
    vim.keymap.set("n", "l", "j", opts)
    vim.keymap.set("n", "ö", "l", opts)
  end,
})
