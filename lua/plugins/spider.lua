return {
  "chrisgrieser/nvim-spider",
  lazy = true,
  dependencies = {
    { 'mrjones2014/legendary.nvim' },
  },
  keys = {
    {
      '<A-w>',
      "<cmd>lua require('spider').motion('w')<CR>",
      desc = "Spider-w",
      mode = { 'n', 'o', 'x' }
    },
    {
      '<A-e>',
      "<cmd>lua require('spider').motion('e')<CR>",
      desc = "Spider-e",
      mode = { 'n', 'o', 'x' }
    },
    {
      '<A-b>',
      "<cmd>lua require('spider').motion('b')<CR>",
      desc = "Spider-b",
      mode = { 'n', 'o', 'x' }
    },
    {
      '<A-ge>',
      "<cmd>lua require('spider').motion('ge')<CR>",
      desc = "Spider-ge",
      mode = { 'n', 'o', 'x' }
    },
  },
}
