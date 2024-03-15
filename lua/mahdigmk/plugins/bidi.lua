return {
  "mcookly/bidi.nvim",
  config = function()
    require("bidi").setup()
    vim.cmd.set("termbidi")
  end
}
