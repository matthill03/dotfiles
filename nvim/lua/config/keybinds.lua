vim.keymap.set("i", "jk", "<ESC>", {})
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", {})

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", {})
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", {})
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", {})
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", {})

vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)

local snacks = require('snacks')
vim.keymap.set('n', '<leader>sf', snacks.picker.files, { desc = 'Pick file' })
vim.keymap.set('n', '<leader>sb', snacks.picker.buffers, { desc = 'Pick Open Buffers' })

vim.keymap.set('n', '<leader>sg', snacks.picker.grep, { desc = 'Grep' })
vim.keymap.set('n', '<leader>sgw', snacks.picker.grep_word, { desc = 'Grep Current Word' })

vim.keymap.set('n', '\\', "<cmd>Oil<cr>", { desc = 'Open Oil file manager' })
