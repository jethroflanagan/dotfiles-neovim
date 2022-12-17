local keymap = require "core.keymap"

keymap("n", {
  ["<leader>Pf"] = { function() vim.cmd("Telescope projections") end, "Projects" },
  ["<leader>Pa"] = { ":AddWorkspace<CR>", "Add workspace" },
})
