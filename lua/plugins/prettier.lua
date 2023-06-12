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
      cli_options = {
        arrow_parens = "always",
        bracket_spacing = true,
        bracket_same_line = true,
        embedded_language_formatting = "auto",
        html_whitespace_sensitivity = "css",
        -- jsx_bracket_same_line = false,
        jsx_single_quote = false,
        print_width = 80,
        prose_wrap = "preserve",
        quote_props = "as-needed",
        semi = true,
        single_attribute_per_line = false,
        single_quote = true,
        tab_width = 2,
        trailing_comma = "es5",
        use_tabs = false,
        vue_indent_script_and_style = false,
      },
    })

    local map = require 'config.utils'.map
    map("n", "lf", ":Prettier<cr>", { desc = "Format with Prettier" })
  end,
}
