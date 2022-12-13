local keymap = require "core.keymap"

keymap("n", {
  ["<leader>e"] = { ":Neotree toggle<CR>", "Toggle filetree" },
  ["<leader>B"] = { ":Neotree toggle show buffers right<CR>", "Toggle buffers" },
  ["<leader>o"] = { ":Neotree reveal<CR>", "Reveal file" },
})
