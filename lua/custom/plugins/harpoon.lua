return {
  'theprimeagen/harpoon',
  config = function()
    local harpoon = require 'harpoon'
    harpoon.setup()
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<C-h>', function()
      harpoon:list():next { ui_nav_wrap = true }
    end)
  end,
}
