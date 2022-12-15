local keymap = require "core.keymap"

keymap("n", {
  ["<leader>C"] = { "<cmd> Telescope colorscheme <CR>", "Color scheme" },
})
