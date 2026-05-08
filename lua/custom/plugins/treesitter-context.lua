vim.pack.add { 'https://github.com/nvim-treesitter/nvim-treesitter-context' }

require('treesitter-context').setup {
  line_numbers = true,
}
