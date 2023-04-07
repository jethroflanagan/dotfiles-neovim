return {
  "dstein64/nvim-scrollview",
  config = function()
    require("scrollview").setup({
      excluded_filetypes = {},
      current_only = true,
      winblend = 15,
      base = "right",
      column = 1,
    })
  end,
}
