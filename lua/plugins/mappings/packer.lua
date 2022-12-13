local keymap = require "core.keymap"

keymap("n", {
  ["<leader>ps"] = { ":PackerSync<CR>", "Packer sync" },
})
