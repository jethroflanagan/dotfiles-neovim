return {
  "gbprod/yanky.nvim",
  dependencies = { "telescope.nvim" },
  config = function()
    require("yanky").setup({
      ring = {
        history_length = 100,
        storage = "shada",
        sync_with_numbered_registers = true,
        cancel_event = "update",
      },
      picker = {
        select = {
          action = nil, -- nil to use default put action
        },
        telescope = {
          mappings = nil, -- nil to use default mappings
        },
      },
      system_clipboard = {
        sync_with_ring = true,
      },
      highlight = {
        on_put = true,
        on_yank = true,
        timer = 500,
      },
      preserve_cursor_position = {
        enabled = true,
      },
    })
    require("telescope").load_extension("yank_history")
  end,
  keys = {
    { "y", "<Plug>(YankyYank)" },
    { "p", "<Plug>(YankyPutAfter)" },
    { "P", "<Plug>(YankyPutBefore)" },
    { "gp", "<Plug>(YankyGPutAfter)" },
    { "gP", "<Plug>(YankyGPutBefore)" },
    { "<C-p>", "<cmd>lua require('telescope').extensions.yank_history.yank_history({})<CR>" },
    -- "p", "p=`]" , -- indent pasted text
  },
}
