return
{
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup({
      rename = {
        in_select = true,
        auto_save = true,
        keys = {
          quit = '<leader>q',
          exec = '<cr>',
          select = 'x'
        }
      }
    })
  end,
  dependencies = {
    'nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons'
  }
}
