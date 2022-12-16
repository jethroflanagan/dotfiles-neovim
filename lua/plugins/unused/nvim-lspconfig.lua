return function(use)
  use {
    "neovim/nvim-lspconfig",
    after = { "mason-lspconfig.nvim", "cmp-nvim-lsp"},
    -- requires = {"cmp-nvim-lsp"},
    setup = function()
      require("core.lazy_load").on_file_open "nvim-lspconfig"
    end,
    config = function()
      local lspconfig = require('lspconfig')
      local lsp_defaults = lspconfig.util.default_config

      lsp_defaults.capabilities = vim.tbl_deep_extend(
        'force',
        lsp_defaults.capabilities,
        require('cmp_nvim_lsp').default_capabilities()
      )
    end,
  }

end
