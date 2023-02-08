return {
  "dstein64/nvim-scrollview",
  config = function()
    require("scrollview").setup({
      excluded_filetypes = {},
      current_only = true,
      winblend = 75,
      base = "right",
      column = 2,
    })
  end,
}
