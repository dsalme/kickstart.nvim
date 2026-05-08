vim.pack.add { 'https://github.com/christoomey/vim-tmux-navigator' }

vim.keymap.set('n', '<C-h>', '<Cmd>TmuxNavigateLeft<CR>', { desc = 'Tmux: navigate left' })
vim.keymap.set('n', '<C-j>', '<Cmd>TmuxNavigateDown<CR>', { desc = 'Tmux: navigate down' })
vim.keymap.set('n', '<C-k>', '<Cmd>TmuxNavigateUp<CR>', { desc = 'Tmux: navigate up' })
vim.keymap.set('n', '<C-l>', '<Cmd>TmuxNavigateRight<CR>', { desc = 'Tmux: navigate right' })
