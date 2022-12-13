local keymap = require "core.keymap"

keymap("n", {
  ["<leader>/"] = {
    function()
      require("Comment.api").toggle.linewise.current()
    end,
    "Toggle comment",
  },
})

keymap("v", {
  ["<leader>/"] = {
    "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
    "Toggle comment",
  },
})
