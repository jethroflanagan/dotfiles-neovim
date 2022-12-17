local keymap = require "core.keymap"

keymap("n", {
  --  ["<leader>P"] = { ":Telescope yank_historyCR>", "Yank history" },
  ["y"] = { "<Plug>(YankyYank)" },
  ["p"] = { "<Plug>(YankyPutAfter)" },
  ["P"] = { "<Plug>(YankyPutBefore)" },
  ["gp"] = { "<Plug>(YankyGPutAfter)" },
  ["gP"] = { "<Plug>(YankyGPutBefore)" },
  ["<C-p>"] = { "<cmd>lua require('telescope').extensions.yank_history.yank_history({})<CR>" },
  ["p"] = { "p=`]" }, -- indent pasted text
})
