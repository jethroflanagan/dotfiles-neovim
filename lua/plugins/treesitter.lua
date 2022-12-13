return function(use)
  use {
    "nvim-treesitter/nvim-treesitter",
    module = "nvim-treesitter",
    setup = function()
      require("core.lazy_load").on_file_open "nvim-treesitter"
    end,
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSEnable", "TSDisable", "TSModuleInfo" },
    run = ":TSUpdate",
    config = function()
      local present, treesitter = pcall(require, "nvim-treesitter.configs")

      if not present then
        return
      end

      treesitter.setup({
        ensure_installed = {
          "lua",
          "vim",
          "css",
          "html",
          "javascript",
          "typescript",
          "ruby",
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        context_commentstring = {
          enable = true,
          enable_autocmd = false,
        },
        rainbow = {
          enable = true,
          disable = { "html" },
          extended_mode = false,
          max_file_lines = nil,
        },
        autotag = { enable = true },
        incremental_selection = { enable = true },
        indent = { enable = false },
      })
    end,
  }

end
