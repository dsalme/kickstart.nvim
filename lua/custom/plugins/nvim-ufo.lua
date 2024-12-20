return {
  'kevinhwang91/nvim-ufo',
  dependencies = { 'kevinhwang91/promise-async' },
  config = function()
    local ufo = require 'ufo'
    ufo.setup {
      provider_selector = function(bufnr, filetype, buftype)
        return { 'treesitter', 'indent' }
      end,
    }
    vim.o.foldcolumn = '1'
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    vim.keymap.set('n', 'zR', ufo.openAllFolds)
    vim.keymap.set('n', 'zM', ufo.closeAllFolds)
  end,
}
