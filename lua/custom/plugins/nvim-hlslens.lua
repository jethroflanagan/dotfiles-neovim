return {
  requires = { "nvim-lua/plenary.nvim", "petertriho/nvim-scrollbar" },
  config = function()
    -- require('hlslens').setup() is not required
    require("scrollbar.handlers.search").setup {
      -- hlslens config overrides
    }
  end,
}
