return {
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup({
      pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      toggler = {
        line = "<leader>/",
        block = "<leader>?"
      },
      opleader = {
        line = "<leader>/",
        block = "<leader>?"
      },
      mappings = {
        basic = true,
      }
    })
  end
}
