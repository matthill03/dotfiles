return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-live-grep-args.nvim',
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-tree/nvim-web-devicons",
      "folke/todo-comments.nvim"
    },
    config = function()
      require("telescope").load_extension("live_grep_args")
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")
      local extensions = require("telescope").extensions
      local actions = require("telescope.actions")

      telescope.setup({
        defaults = {
          path_display = { "smart" },
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.move_selection_next,
            }
          }
        }
      })

      telescope.load_extension("fzf")

      local keymap = vim.keymap

      keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<CR>", { desc = "Search files" })
      keymap.set('n', '<leader>fr', "<cmd>Telescope oldfiles<CR>", { desc = "Search recent files" })
      -- keymap.set('n', '<leader>ffd', function() builtin.find_files({no_ignore=true, search_dirs={vim.fn.expand("%:p:h")}}) end, { desc = "Search files in current directory"})
      keymap.set('n', '<leader>fk', builtin.keymaps, { desc = "Search keymaps" })
      keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Search buffers" })
      keymap.set('n', '<leader>fs', extensions.live_grep_args.live_grep_args, {})
      keymap.set('n', '<leader>ft', "<cmd>TodoTelescope<CR>", { desc = "Find todos" })
      -- vim.keymap.set('n', '<leader>fd', function() extensions.live_grep_args.live_grep_args({search_dirs={vim.fn.expand("%:p:h")}}) end, {})
      -- vim.keymap.set('n', '<leader>fc', function() extensions.live_grep_args.live_grep_args({search_dirs={vim.fn.expand("%:p")}}) end, {})

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
