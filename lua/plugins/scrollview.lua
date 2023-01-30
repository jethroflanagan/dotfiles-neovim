return {
  "dstein64/nvim-scrollview",
  config = function()
    require("scrollview").setup({
      excluded_filetypes = {},
      current_only = true,
      winblend = 75,
      base = "buffer",
      column = 80,
    })
  end,
}
