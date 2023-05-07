return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  dependencies = {
    -- LSP Support

    { 'jose-elias-alvarez/null-ls.nvim' },
    { 'neovim/nvim-lspconfig' }, -- Required
    {
      -- Optional
      'williamboman/mason.nvim',
      build = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    { 'williamboman/mason-lspconfig.nvim' }, -- Optional
    { 'jay-babu/mason-null-ls.nvim' },
    -- Autocompletion
    { 'hrsh7th/nvim-cmp' },     -- Required
    { 'hrsh7th/cmp-nvim-lsp' }, -- Required
    { 'L3MON4D3/LuaSnip' },     -- Required
    -- formatting
    { 'MunifTanjim/prettier.nvim' },
  },
  config = function()
    local lsp = require('lsp-zero').preset({
      configure_diagnostics = false,
      set_format = true,
      manage_nvim_cmp = {
        set_sources = 'recommended'
      }
    })

    lsp.extend_lspconfig()

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

    -- lsp.set_server_config({
    --   capabilities = {
    --     textDocument = {
    --       foldingRange = {
    --         dynamicRegistration = false,
    --         lineFoldingOnly = true
    --       }
    --     }
    --   }
    -- })

    -- require('mason').setup()
    -- require('mason-lspconfig').setup()
    --
    -- local get_servers = require('mason-lspconfig').get_installed_servers
    -- for _, server_name in ipairs(get_servers()) do
    --   require('lspconfig')[server_name].setup({})
    -- end
    lsp.format_on_save({
      format_opts = {
        timeout_ms = 10000,
      },
      servers = {
        ['null-ls'] = { 'javascript', 'typescript', 'scss', 'css', 'lua' },
      }
    })

    lsp.setup()

    local null_ls = require('null-ls')

    null_ls.setup({
      sources = {
        --- Replace these with the tools you have installed
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
      }
    })

    require('mason-null-ls').setup({
      ensure_installed = nil,
      automatic_installation = true,
    })

    local cmp = require('cmp')
    cmp.setup({
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      }
    })

    local cmp_action = require('lsp-zero').cmp_action()

    cmp.setup({
      mapping = {
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
        ['<TAB>'] = cmp.mapping.confirm({ select = true }),
      }
    })
  end,
}
