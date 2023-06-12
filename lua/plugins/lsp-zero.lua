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
  },
  config = function()
    local lsp = require('lsp-zero').preset({
      configure_diagnostics = false,
      -- set_format = true,
      manage_nvim_cmp = {
        set_sources = 'recommended'
      }
    })

    lsp.extend_lspconfig()

    lsp.on_attach(function(client, bufnr)
      lsp.default_keymaps({ buffer = bufnr })

      if client.name == 'cssls' or client.name == 'lemminx' then return end

      lsp.buffer_autoformat({})
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
        ['tsserver'] = { 'lua', 'typescript', 'javascript' },
      }
    })

    -- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

    lsp.setup()

    -- local null_ls = require('null-ls')
    --
    -- null_ls.setup({
    --   on_attach = function(client, bufnr)
    --     print("client", client.id)
    --   end,
    --   sources = {
    --     null_ls.builtins.diagnostics.cspell,
    --     null_ls.builtins.code_actions.cspell,
    --     --- Replace these with the tools you have installed
    --     -- null_ls.builtins.formatting.stylua,
    --     -- null_ls.builtins.formatting.eslint_d,
    --     -- null_ls.builtins.formatting.prettierd,
    --   }
    -- })

    -- null_ls.register({
    --   name = "styles",
    --   filetypes = { "css", "scss" },
    --   sources = { null_ls.builtins.formatting.prettierd, }
    -- })
    --
    -- require('mason-null-ls').setup({
    --   ensure_installed = nil,
    --   automatic_installation = true,
    -- })
    --
    local cmp = require('cmp')


    local cmp_action = require('lsp-zero').cmp_action()

    cmp.setup({
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      sources = {
        { name = 'nvim_lsp' },
        {
          name = 'spell',
          option = {
            keep_all_entries = false,
            enable_in_context = function()
              return true
            end,
          },
        },
      },
      mapping = {
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
        ['<TAB>'] = cmp.mapping.confirm({ select = true }),
      }
    })

    local map = require 'config.utils'.map
    map('n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<cr>', { desc = "Code action" })
    -- map('n', '<leader>li', '<cmd>lua vim.lsp.buf.implementation()<cr>', { desc = "Go to implementation" })
  end,
}
