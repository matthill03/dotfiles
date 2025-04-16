-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        { "nvim-telescope/telescope-fzf-native.nvim" },
        { "nvim-telescope/telescope-ui-select.nvim" },
        { "nvim-telescope/telescope-file-browser.nvim" },
        { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_fond },
    },
    config = function()
        require('telescope').setup {
            defaults = {
                mappings = {
                    i = {
                        ["<C-u>"] = false,
                        ["<C-d>"] = false,
                        ["<C-n>"] = require('telescope.actions').move_selection_next,
                        ["<C-p>"] = require('telescope.actions').move_selection_previous,
                    }

                },
            },
            extensions = {
                file_browser = {
                    theme = "ivy",
                    hijack_netrw = true,
                },
                fzf = {},
            }
        }
        require("telescope").load_extension("file_browser");
        require("telescope").load_extension("fzf");

        vim.keymap.set("n", "\\", require("telescope").extensions.file_browser.file_browser, { desc = "[F]ile [B]rowser" })

        -- See `:help telescope.builtin`
        vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
        vim.keymap.set('n', '<leader>/', function()
          -- You can pass additional configuration to telescope to change theme, layout, etc.
          require('telescope.builtin').current_buffer_fuzzy_find()
        end, { desc = '[/] Fuzzily search in current buffer]' })

        vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
        vim.keymap.set('n', '<leader>sb', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })

        -- vim.api.nvim_set_keymap("n", "st", ":TodoTelescope<CR>", {noremap=true})
        -- vim.api.nvim_set_keymap("n", "<Leader><tab>", "<Cmd>lua require('telescope.builtin').commands()<CR>", {noremap=false})
    end
}
