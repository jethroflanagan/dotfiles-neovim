return {
  'MunifTanjim/prettier.nvim',
  config = function()
    local prettier = require("prettier")
    prettier.setup({
      bin = 'prettierd', -- or `'prettierd'` (v0.23.3+)
      filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "markdown",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
      },
    })


    local map = require 'config.utils'.map
    map("n", "lf", ":Prettier<cr>", { desc = "Format with Prettier" })
  end,
}
