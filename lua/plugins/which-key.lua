return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- plugins = { spelling = true },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    local keymaps = {
      mode = { "n", "v" },
      ["g"] = { name = "+goto" },
      ["gz"] = { name = "+surround" },
      ["]"] = { name = "+next" },
      ["["] = { name = "+prev" },
      ["<leader><tab>"] = { name = "+tabs" },
      ["<leader>b"] = { name = "+buffer" },
      ["<leader>l"] = { name = "+lsp" },
      ["<leader>f"] = { name = "+file" },
      ["<leader>S"] = { name = "+session" },
      ["<leader>s"] = { name = "+search" },
      ["<leader>k"] = { name = "+keymaps" },
      ["<leader>u"] = { name = "+ui" },
      ["<leader>w"] = { name = "+windows" },
      ["<leader>x"] = { name = "+diagnostics/quickfix" },
      -- ["<leader>sn"] = { name = "+noice" },
    }
    wk.register(keymaps)
  end,
}
