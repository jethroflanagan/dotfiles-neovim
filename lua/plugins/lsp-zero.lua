return function(use)
  use {
    'VonHeikemen/lsp-zero.nvim',
    after = {
      { 'williamboman/mason-lspconfig.nvim' },
    },
    requires = {
      { 'saadparwaiz1/cmp_luasnip' },
      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    },
    -- config = function()
    --   local lsp = require('lsp-zero')
    --
    --   lsp.preset('recommended')
    --   lsp.setup()
    -- end
  }

end
