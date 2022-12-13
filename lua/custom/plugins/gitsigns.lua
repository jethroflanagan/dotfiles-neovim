return {
  requires = { "petertriho/nvim-scrollbar" },
  config = function()
    require("gitsigns").setup()
    require("scrollbar.handlers.gitsigns").setup()
  end,
}
