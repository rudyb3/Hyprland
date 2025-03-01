-- Make line numbers default
vim.opt.number = true

-- Make relative numbers default to help with jump
vim.opt.relativenumber = false

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Configure how new splits should be opened
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Disable Wrap Line
vim.opt.wrap = true

-- Spacers instead tabs and how many spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Set the clipboard to the register interacting with system clipboard
vim.opt.clipboard = "unnamedplus"

-- Put the cursor in center of screen
vim.opt.scrolloff = 999

-- Allow in visual block (C-P) to use empty character cells
vim.opt.virtualedit = "block"

-- in :%s search/replace create a splitted box chowing all lines where the change occur
vim.opt.inccommand = "split"

-- Ignore case in search mode
vim.opt.ignorecase = true

-- Allow nvim to use terminal colors
vim.opt.termguicolors = true

-- Set leader key

vim.g.mapleader = " "