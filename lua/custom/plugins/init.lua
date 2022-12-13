return {

  ["goolord/alpha-nvim"] = { disable = false },

  ["folke/which-key.nvim"] = { disable = false },

  ["kyazdani42/nvim-tree.lua"] = { disable = true },

  ["nvim-neo-tree/neo-tree.nvim"] = require "custom.plugins.neo-tree",

  ["petertriho/nvim-scrollbar"] = require "custom.plugins.nvim-scrollbar",

  ["kevinhwang91/nvim-hlslens"] = require "custom.plugins.nvim-hlslens",

  ["lewis6991/gitsigns.nvim"] = require "custom.plugins.gitsigns",

  ["Shatur/neovim-session-manager"] = require "custom.plugins.neovim-session-manager",

  ["jose-elias-alvarez/null-ls.nvim"] = require "custom.plugins.null-ls",

  ["stevearc/dressing.nvim"] = require "custom.plugins.dressing",
}
