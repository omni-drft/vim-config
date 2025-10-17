return {
  { "williamboman/mason.nvim", config = true },
  { "neovim/nvim-lspconfig" },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()


      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "clangd",
          "asm_lsp",
          "cmake",
          "jsonls",
        },
        handlers = {
          function(server_name)
            require("lspconfig")[server_name].setup({
              capabilities = capabilities,
              on_attach = on_attach,
            })
          end,
        },
      })
    end,
  },
}
