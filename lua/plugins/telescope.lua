return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8', -- Używamy stabilnej wersji
  dependencies = { 'nvim-lua/plenary.nvim' },
  
  config = function(fdsjklfd)
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')

    -- Pusta konfiguracja, aby użyć świetnych ustawień domyślnych
    telescope.setup({})

    local keymap = vim.keymap
    
    -- [[ Najważniejsze skróty klawiszowe ]]
    
    -- Wyszukaj pliki w projekcie
    keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Wyszukaj pliki' })
    
    -- Wyszukaj tekst (grep) w całym projekcie
    keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Wyszukaj tekst w projekcie' })
    
    -- Wyszukaj w otwartych buforach (plikach)
    keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Przeszukaj otwarte pliki' })
    
    -- Przeszukaj dokumentację Neovim
    keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Przeszukaj pomoc' })
  end,
}
