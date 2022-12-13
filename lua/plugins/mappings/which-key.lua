local keymap = require "core.keymap"

keymap("n", {
  ["<leader>K"] = { name = "Keys" },
  ["<leader>Kw"] = {
    function()
      vim.cmd "WhichKey"
    end,
    "Whichkey keymaps",
  },
  ["<leader>KW"] = {
    function()
      local input = vim.fn.input "WhichKey: "
      vim.cmd("WhichKey " .. input)
    end,
    "WhichKey query",
  },
  ["<leader>Kt"] = { "<cmd> Telescope keymaps <CR>", "Show keys" },
})
