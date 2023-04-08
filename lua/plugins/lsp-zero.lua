return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  dependencies = {
    -- LSP Support
    { 'neovim/nvim-lspconfig' }, -- Required
    {
      -- Optional
      'williamboman/mason.nvim',
      build = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    { 'williamboman/mason-lspconfig.nvim' }, -- Optional

    -- Autocompletion
    { 'hrsh7th/nvim-cmp' },     -- Required
    { 'hrsh7th/cmp-nvim-lsp' }, -- Required
    { 'L3MON4D3/LuaSnip' },     -- Required
  },
  config = function()
    local lsp = require('lsp-zero').preset({
      configure_diagnostics = false,
    })

    lsp.on_attach(function(client, bufnr)
      lsp.default_keymaps({ buffer = bufnr })
      lsp.buffer_autoformat()
    end)

    vim.diagnostic.config({
      virtual_text = false,
    })

    local icons = require('config.icons').diagnostics

    lsp.set_sign_icons({
      error = icons.Error,
      warn = icons.Warn,
      hint = icons.Hint,
      info = icons.Info,
      -- error = '✘',
      -- warn = '▲',
      -- hint = '⚑',
      -- info = '»'
    })
    lsp.setup()
  end,
}
