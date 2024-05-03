return {
  'ggandor/leap.nvim',
  lazy = false,
  dependencies = {
    'tpope/vim-repeat'
  },
  config = function()
    require('leap').create_default_mappings()
  end
}
