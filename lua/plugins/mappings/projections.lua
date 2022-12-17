local keymap = require "core.keymap"

keymap("n", {
  ["<leader>P"] = { ":Telescope projects<CR>", "Projects" },
})
