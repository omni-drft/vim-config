return {
  'stevearc/conform.nvim',

  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = { "n", "v" },
      desc = "Formatuj bieżący plik",
    },
  },

  opts = {

    formatters_by_ft = {
      c = { 'clang_format' },
      cpp = { 'clang_format' },
      lua = { 'stylua' },
    },

    formatters = {
      clang_format = {
        args = { '--fallback-style=Google' },
      },
    },
  },
}
