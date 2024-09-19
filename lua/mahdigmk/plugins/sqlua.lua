return {
  'xemptuous/sqlua.nvim',
  lazy = true,
  cmd = 'SQLua',
  config = function() require('sqlua').setup() end
}
