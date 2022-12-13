local keymap = require "core.keymap"

keymap("n", {
  ["<leader>f"] = { name = "Files" },
  ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "Find files" },
  ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "Find recent" },
  ["<leader>fw"] = { "<cmd> Telescope live_grep <CR>", "Find words" },
  ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "Find buffers" },
  ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find all" },
  ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "Help for Telescope" },

  -- git
  -- ["<leader>cm"] = { "<cmd> Telescope git_commits <CR>", "git commits" },
  -- ["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "git status" },

  -- -- pick a hidden term
  -- ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "pick hidden term" },

  -- theme switcher
  -- ["<leader>th"] = { "<cmd> Telescope themes <CR>", "nvchad themes" },
})
