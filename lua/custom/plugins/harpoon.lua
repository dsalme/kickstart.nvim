vim.pack.add {
  { src = 'https://github.com/theprimeagen/harpoon', version = 'harpoon2' },
  -- plenary already installed by telescope; listed here in case order changes
  'https://github.com/nvim-lua/plenary.nvim',
}

local harpoon = require 'harpoon'
harpoon:setup()

vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Harpoon menu' })
vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = 'Harpoon add' })
vim.keymap.set('n', '<C-a>', function() harpoon:list():next { ui_nav_wrap = true } end, { desc = 'Harpoon next' })
