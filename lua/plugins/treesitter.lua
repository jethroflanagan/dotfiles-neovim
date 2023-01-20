return function(use)
  use {
    "nvim-treesitter/nvim-treesitter",
    module = "nvim-treesitter",
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
          "help",
          "css",
          "html",
          "javascript",
          "typescript",
          -- "ruby",
        },
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = true,
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
