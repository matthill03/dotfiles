
vim.pack.add({
    "https://github.com/folke/tokyonight.nvim",
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/christoomey/vim-tmux-navigator",
    "https://github.com/stevearc/oil.nvim",
    "https://github.com/folke/snacks.nvim",
})

require("tokyonight").setup({})
vim.cmd [[colorscheme tokyonight-moon]]

require("mason").setup({})
require("oil").setup({})
require("snacks").setup({
    picker = { enabled = true }
})

require("config.options")
require("config.lsp")
require("config.keybinds")

