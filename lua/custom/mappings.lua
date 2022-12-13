local M = {}
local opts = {
  silent = true,
  noremap = true,
}
M.general = {
  n = {
    -- explorer
    ["<leader>e"] = { ":Neotree toggle show filesystem left<CR>", opts },
    ["<leader>B"] = { ":Neotree toggle show buffers right<CR>", opts },
    ["<leader>o"] = { ":Neotree reveal<CR>", opts },

    -- buffers
    ["<S-l>"] = { ":bnext<cr>", desc = "Next buffer", opts },
    ["<S-h>"] = { ":bprevious<cr>", desc = "Previous buffer", opts },

    -- Sessions (neovim-session-manager)
    ["<leader>Sf"] = { ":lua require('session_manager').load_session()<cr>", desc = "Load session", opts },
    ["<leader>Sl"] = { ":lua require('session_manager').load_last_session()<cr>", desc = "Load last session", opts },
    ["<leader>Sw"] = {
      ":lua require('session_manager').load_current_dir_session()<cr>",
      desc = "Load current directory session",
      opts,
    },
    ["<leader>Ss"] = { ":lua require('session_manager').save_current_session()<cr>", desc = "Save session", opts },
  },
}

-- more keybinds!

return M
