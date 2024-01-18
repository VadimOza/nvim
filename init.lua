require("core.packer")
require("core.remap")

vim.wo.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.clipboard = 'unnamedplus'
vim.api.nvim_set_keymap('n', '<C-e>', '10<C-e>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-y>', '10<C-y>', { noremap = true })
