return {
  'justinmk/vim-sneak',
  config = function()
    local map = require 'config.utils'.map
    map("n", "f", "<Plug>Sneak_s", { desc = "Sneak forward" })
    map("n", "F", "<Plug>Sneak_S", { desc = "Sneak backward" })
  end,
}
