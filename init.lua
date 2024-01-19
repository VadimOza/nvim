vim.g.mapleader = ' '
vim.wo.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.hlsearch = truebar
vim.opt.incsearch = true
vim.opt.clipboard = 'unnamedplus'
vim.api.nvim_set_keymap('n', '<C-e>', '10<C-e>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-y>', '10<C-y>', { noremap = true })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

require("core.keymaps")
