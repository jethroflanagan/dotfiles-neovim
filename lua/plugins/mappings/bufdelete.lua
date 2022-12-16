local keymap = require "core.keymap"

keymap("n", {
  ["<leader>c"] = { ":Bdelete<cr>", "Close buffer" },
})
