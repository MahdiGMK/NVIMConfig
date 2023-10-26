local nmap = function(keys, func, desc)
  if desc then
    desc = 'BufferLine: ' .. desc
  end

  vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
end


return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    local bufferline = require("bufferline")
    bufferline.setup()
    -- may add group support in future
    vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>")
    vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>")
    nmap("<leader>tp", "<cmd>BufferLineTogglePin<cr>", "[T]ab Toggle [P]in")
    nmap("<leader>tc", "<cmd>BufferLinePickClose<cr>", "[T]ab Pick [C]lose")
    nmap("<leader>tf", "<cmd>BufferLineCloseOthers<cr>", "[T]ab [F]ocus (Close Others)")
  end
}
