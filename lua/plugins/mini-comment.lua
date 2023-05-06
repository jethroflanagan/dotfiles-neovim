return {
  "echasnovski/mini.nvim",
  config = function()
    require('mini.comment').setup {
      hooks = {
        pre = function()
          require('ts_context_commentstring.internal').update_commentstring()
        end,
      },
    }
  end
}
