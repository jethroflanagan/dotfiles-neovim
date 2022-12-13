local keymap = require "core.keymap"

keymap("n", {
  ["<leader>P"] = { name = "Packer"},
  ["<leader>Ps"] = { ":PackerSync<CR>", "Packer sync" },
})
