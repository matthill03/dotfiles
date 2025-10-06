return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua" }
        })
    end
}
