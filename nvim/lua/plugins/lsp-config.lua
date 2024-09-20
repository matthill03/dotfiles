return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "tsserver", "clangd", "cmake", "pylsp", "jsonls"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local keymap = vim.keymap

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.clangd.setup({
        capabilities = capabilities
      })
      lspconfig.neocmake.setup({
        capabilities = capabilities
      })
      lspconfig.pyright.setup({
        capabilities = capabilities
      })

      keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, { desc = "Go to declaration" })
      keymap.set('n', '<leader>gR', "<cmd>Telescope lsp_references<CR>", { desc = "Show lsp references" })

      keymap.set('n', '<leader>gd', "<cmd>Telescope lsp_definitions<CR>", { desc = "Show lsp definitions" })
      keymap.set('n', '<leader>gi', "<cmd>Telescope lsp_implementations<CR>", { desc = "Show lsp implementation" })
      keymap.set('n', '<leader>gt', "<cmd>Telescope lsp_type_definitions<CR>", { desc = "Show lsp type definitions" })

      keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Show documentation for what is under cursor" })

      keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = "Show available code actions" })
    end
  }
}
