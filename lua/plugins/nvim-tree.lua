return {
  "nvim-tree/nvim-tree.lua",
  version = "*", 
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({})

    local keymap = vim.keymap

    keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {
      noremap = true,
      silent = true,
      desc = "Toggle file explorer (NvimTree)",
    })

    keymap.set("n", "<C-h>", function() vim.cmd.wincmd("h") end, { desc = "Go to window on the left" })
    keymap.set("n", "<C-l>", function() vim.cmd.wincmd("l") end, { desc = "Go to window on the right" })

  end,
}
