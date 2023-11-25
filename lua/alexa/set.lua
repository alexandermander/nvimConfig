vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true


vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "0"
<<<<<<< HEAD
vim.api.nvim_set_keymap('i', '<C-Del>', '<C-o>dw', {noremap = true})
=======
vim.api.nvim_set_keymap('i', '<C-Del>', '<C-o>dw', {noremap = true})
>>>>>>> 105ed87e28a12572cc99d320545d5d8a3fc61481
