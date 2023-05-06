return {
  'numToStr/Comment.nvim',
  pre_hook = function()
    require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()
  end,
  config = function()
    require('Comment').setup()
  end
}
