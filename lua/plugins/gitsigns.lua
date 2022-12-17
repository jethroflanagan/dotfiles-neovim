return function(use)
  use { 'lewis6991/gitsigns.nvim',
    config = function()
      local present, gitsigns = pcall(require, "gitsigns")

      if not present then
        return
      end

      local options = {
        signs = {
          add = { text = "▎" },
          change = { text = "▎" },
          delete = { text = "▎" },
          topdelete = { text = "契" },
          changedelete = { text = "▎" },
          untracked = { text = "▎" },
        },
        on_attach = function(bufnr)
          -- utils.load_mappings("gitsigns", { buffer = bufnr })
        end,
      }

      gitsigns.setup(options)
    end
  }
end
