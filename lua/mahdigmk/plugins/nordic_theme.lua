return {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require("nordic").setup {
            cursorline = {
                blend = 1
            }
        }
        require 'nordic'.load()
        vim.cmd.colorscheme 'nordic'
    end
}
