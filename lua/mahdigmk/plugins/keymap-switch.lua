return {
  'MahdiGMK/keymap-switch.nvim',
  dependencies = {
    'nvim-lualine/lualine.nvim'
  },
  keys = {
    { '<c-\\>', '<plug>(keymap-switch)', mode = { 'i', 'c', 'n' } },
  },
  config = function()
    require('keymap_switch').setup({
      keymap = 'persian'
      -- other configuration
    })
    require('lualine').setup({
      sections = {
        lualine_z = {
          {
            require('keymap_switch').provider,
            cond = require('keymap_switch').condition,
          }
        }
      }
    })
  end
}
