-- map leader key
vim.g.mapleader = " "

local opt = vim.opt

-- Numbers on the left
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- No wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard = { "unnamed", "unnamedplus" }

-- split windows
opt.splitright = true
opt.splitbelow = false

-- turn off swap file
opt.swapfile = false
