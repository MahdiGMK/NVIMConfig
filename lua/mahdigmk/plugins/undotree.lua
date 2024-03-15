local nmap = function(keys, func, desc)
  if desc then
    desc = 'LSP: ' .. desc
  end

  vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
end

return {
  'mbbill/undotree',
  config = function()
    nmap('<leader>u', vim.cmd.UndotreeToggle, '[U]ndo Tree')

    vim.opt.swapfile = false
    vim.opt.backup = false
    vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
    vim.opt.undofile = true
  end,
}
