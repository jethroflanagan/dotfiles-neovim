return {
  "shortcuts/no-neck-pain.nvim",
  version = "*",
  config = function()
    require("no-neck-pain").setup()
  end,
  keys = { { "<leader>zm", ":NoNeckPain<CR>", desc = "Zen mode" } },
}
