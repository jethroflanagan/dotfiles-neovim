local keymap = require "core.keymap"

keymap("n", {
  ["<leader>c"] = { "<cmd> Telescope colorscheme <CR>", "Color scheme" },
})
