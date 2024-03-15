return {
  "tamago324/nlsp-settings.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "rcarriga/nvim-notify"
  },
  config = function()
    require('nlspsettings').setup()
  end
}
