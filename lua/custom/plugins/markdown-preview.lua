-- Run mkdp install on first install/update. Must register before vim.pack.add
-- so the PackChanged event fires through this handler.
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name = ev.data.spec and ev.data.spec.name
    local kind = ev.data.kind
    if name == 'markdown-preview.nvim' and (kind == 'install' or kind == 'update') then
      vim.fn['mkdp#util#install']()
    end
  end,
})

vim.pack.add { 'https://github.com/iamcco/markdown-preview.nvim' }
