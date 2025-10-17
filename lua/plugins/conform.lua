return {
  'stevearc/conform.nvim',

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
