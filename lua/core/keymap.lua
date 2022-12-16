local whichkey = require "which-key"

local merge_tb = vim.tbl_deep_extend

return function(mode, keys, options)
  local opts = merge_tb("force", {
    mode = mode,
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
  }, options or {})

  whichkey.register(keys, opts)
  -- vim.api.nvim_set_keymap(mode, keys, '', opts)
end
