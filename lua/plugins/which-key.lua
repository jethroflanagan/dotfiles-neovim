return function(use)
  use { "folke/which-key.nvim",
    -- module = "which-key",
    keys = { "<leader>", '"', "'", "`" },
    config = function()
      local present, wk = pcall(require, "which-key")

      if not present then
        return
      end

      -- require("base46").load_highlight "whichkey"

      local options = {

        icons = {
          breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
          separator = "  ", -- symbol used between a key and it's label
          group = "+", -- symbol prepended to a group
        },

        popup_mappings = {
          scroll_down = "<c-d>", -- binding to scroll down inside the popup
          scroll_up = "<c-u>", -- binding to scroll up inside the popup
        },

        window = {
          border = "none", -- none/single/double/shadow
        },

        layout = {
          spacing = 6, -- spacing between columns
        },

        hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },

        triggers_blacklist = {
          -- list of mode / prefixes that should never be hooked by WhichKey
          i = { "j", "k" },
          v = { "j", "k" },
        },
      }

      wk.setup(options)

      require "core.mappings"
      require "plugins.mappings"
    end,
    setup = function()
      -- require("core.utils").load_mappings "whichkey"
    end,
  }

end
