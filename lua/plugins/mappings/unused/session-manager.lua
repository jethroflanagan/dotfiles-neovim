local keymap = require "core.keymap"

keymap("n", {
  ["<leader>S"] = { name = "Sessions" },
  ["<leader>Ss"] = { "SessionManager! save_current_session<cr>", "Save session" },
  ["<leader>Sl"] = { "SessionManager! load_last_session<cr>", "Load last session" },
  ["<leader>Sf"] = { "<cmd>SessionManager! load_session<cr>", "Search sessions" },
})
