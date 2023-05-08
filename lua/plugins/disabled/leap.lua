return {
  "ggandor/leap.nvim",
  keys = {
    { "f",  mode = { "n", "x", "o" }, desc = "Leap forward to" },
    { "F",  mode = { "n", "x", "o" }, desc = "Leap backward to" },
    { "gf", mode = { "n", "x", "o" }, desc = "Leap from windows" },
  },
  dependencies = { { "tpope/vim-repeat" } },
  config = function(_, opts)
    local leap = require("leap")
    leap.opts.safe_labels = {} -- don't autojump
    for k, v in pairs(opts) do
      leap.opts[k] = v
    end
    leap.add_default_mappings(false)
    -- vim.keymap.del({ "x", "o" }, "x")
    -- vim.keymap.del({ "x", "o" }, "X")
  end,
}
