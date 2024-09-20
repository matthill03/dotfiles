return {
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        -- Your config here
      })
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    extend_background_behind_borders = true,
    config = function()
      require("rose-pine").setup({
        -- Your config here
      })
    end
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    config = function()
	vim.cmd.colorscheme('gruvbox-material')
    end
  }
}
