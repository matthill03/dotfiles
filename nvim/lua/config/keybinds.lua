vim.keymap.set("i", "jk", "<ESC>", {})
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", {})

local function smart_move(direction, tmux_cmd)
    local curwin = vim.api.nvim_get_current_win()
    vim.cmd('wincmd ' .. direction)
    if curwin == vim.api.nvim_get_current_win() then
        vim.fn.system('tmux select-pane ' .. tmux_cmd)
    end
end

vim.keymap.set("n", "<C-h>", function() smart_move('h', '-L') end, {})
vim.keymap.set("n", "<C-j>", function() smart_move('h', '-D') end, {})
vim.keymap.set("n", "<C-k>", function() smart_move('h', '-U') end, {})
vim.keymap.set("n", "<C-l>", function() smart_move('h', '-R') end, {})

vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)

local snacks = require('snacks')
vim.keymap.set('n', '<leader>sf', snacks.picker.files, { desc = 'Pick file' })
vim.keymap.set('n', '<leader>sb', snacks.picker.buffers, { desc = 'Pick Open Buffers' })

vim.keymap.set('n', '<leader>sg', snacks.picker.grep, { desc = 'Grep' })
vim.keymap.set('n', '<leader>sgw', snacks.picker.grep_word, { desc = 'Grep Current Word' })

vim.keymap.set('n', '\\', "<cmd>Oil<cr>", { desc = 'Open Oil file manager' })
