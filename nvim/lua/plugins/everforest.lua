return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000,
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    vim.cmd.colorscheme "everforest"
    require("everforest").setup({
      -- Your config here
    })
  end,
}
