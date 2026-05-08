vim.pack.add {
  'https://github.com/kevinhwang91/promise-async',
  'https://github.com/kevinhwang91/nvim-ufo',
}

local ufo = require 'ufo'
ufo.setup {
  provider_selector = function(_bufnr, _filetype, _buftype)
    return { 'treesitter', 'indent' }
  end,
}

vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.keymap.set('n', 'zR', ufo.openAllFolds, { desc = 'Open all folds' })
vim.keymap.set('n', 'zM', ufo.closeAllFolds, { desc = 'Close all folds' })
