local nmap = function(keys, func, desc)
  if desc then
    desc = 'Harpoon: ' .. desc
  end

  vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
end



return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    require("telescope").load_extension('harpoon')
    nmap("<leader>ha", require("harpoon.mark").add_file, "[H]arpoon [A]dd")
    nmap("<leader>hs", "<cmd>Telescope harpoon marks<cr>", "[H]arpoon [S]earch")
    nmap("<leader>hn", require("harpoon.ui").toggle_quick_menu, "[H]arpoon [N]avigation")
  end
}
