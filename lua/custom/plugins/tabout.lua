-- LuaSnip and treesitter are loaded earlier in init.lua; tabout doesn't depend
-- on nvim-cmp at runtime since `completion = false` below.
vim.pack.add { 'https://github.com/abecodes/tabout.nvim' }

require('tabout').setup {
  tabkey = '<Tab>',
  backwards_tabkey = '<S-Tab>',
  act_as_tab = true,
  act_as_shift_tab = false,
  default_tab = '<C-t>',
  default_shift_tab = '<C-d>',
  enable_backwards = true,
  completion = false,
  tabouts = {
    { open = "'", close = "'" },
    { open = '"', close = '"' },
    { open = '`', close = '`' },
    { open = '(', close = ')' },
    { open = '[', close = ']' },
    { open = '{', close = '}' },
  },
  ignore_beginning = true,
  exclude = {},
}
