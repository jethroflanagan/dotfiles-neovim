local keymap = require "core.keymap"

keymap("n", {
  ["<leader>p"] = { name = "Packer" },
  ["<leader>ps"] = { ":PackerSync<CR>", "Packer sync" },
  ["<leader>pS"] = { ":PackerStatus<CR>", "Packer status" },
  ["<leader>pc"] = { ":PackerCompile<CR>", "Packer compile" },
})
