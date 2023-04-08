return {
  'Wansmer/treesj',
  keys = {
    { '<space>jm', ":lua require('treesj').toggle()<cr>", desc = 'Toggle join / split' },
    { '<space>jj', ":lua require('treesj').join()<cr>",   desc = 'Join lines' },
    { '<space>js', ":lua require('treesj').split()<cr>",  desc = 'Split lines' },
  },
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('treesj').setup({ --[[ your config ]] })
  end,
}
