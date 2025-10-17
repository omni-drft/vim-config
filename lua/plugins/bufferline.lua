return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('bufferline').setup({
      options = {
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            separator = true
          }
        }
      }
    })

    local keymap = vim.keymap

    keymap.set("n", "[b", ":bprevious<CR>", { desc = "Next buffer" })
    keymap.set("n", "]b", ":bnext<CR>", { desc = "Previous buffer" })
    keymap.set("n", "<leader>c", ":bdelete<CR>", { desc = "Close buffer" })
  end,
}
