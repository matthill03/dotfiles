return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-live-grep-args.nvim'
    },
    config = function()
      require("telescope").load_extension("live_grep_args")
      local builtin = require("telescope.builtin")
      local extensions = require("telescope").extensions

      vim.keymap.set('n', '<leader>ff', function() builtin.find_files({no_ignore=true}) end, {})
      vim.keymap.set('n', '<leader>ffd', function() builtin.find_files({no_ignore=true, search_dirs={vim.fn.expand("%:p:h")}}) end, {})

      vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

      vim.keymap.set('n', '<leader>fg', extensions.live_grep_args.live_grep_args, {})
      vim.keymap.set('n', '<leader>fd', function() extensions.live_grep_args.live_grep_args({search_dirs={vim.fn.expand("%:p:h")}}) end, {})
      vim.keymap.set('n', '<leader>fc', function() extensions.live_grep_args.live_grep_args({search_dirs={vim.fn.expand("%:p")}}) end, {})

    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
