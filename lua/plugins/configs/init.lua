local autocmd = vim.api.nvim_create_autocmd

local function spread(template, override)
  if not override then
    return function(override)
      spread(template, override)
    end
  end

  local mt = getmetatable(template)
  local result = {}
  setmetatable(result, mt)

  for key, value in pairs(template) do
    result[key] = deep_copy(value)
  end

  -- No longer wrapped up inside a function
  for key, value in pairs(override) do
    result[key] = value
  end

  return result
end

return function(use)
  -- use {
  --   "NvChad/base46",
  --   config = function()
  --     local ok, base46 = pcall(require, "base46")

  --     if ok then
  --       base46.load_theme()
  --     end
  --   end,
  -- }

  -- require "lua.plugins.configs.plenary" (use)

  -- use "lewis6991/impatient.nvim"

  -- use {"wbthomason/packer.nvim",
  --   cmd = require("core.lazy_load").packer_cmds,
  --   config = function()
  --     local plugins = require "plugins"
  --     plugins(use)
  --   end,
  -- },

  -- use { "hrsh7th/nvim-cmp",
  --   -- after = "base46",
  --   config = function()
  --     require "plugins.configs.cmp"
  --   end,
  -- }

  -- use {
  --   "windwp/nvim-autopairs",
  --   after = "nvim-cmp",
  --   config = function()
  --     require "plugins.configs.autopairs"
  --   end,
  -- }
  -- use {
  --   "lukas-reineke/indent-blankline.nvim",
  --   opt = true,
  --   setup = function()
  --     require("core.lazy_load").on_file_open "indent-blankline.nvim"
  --   end,
  --   config = function()
  --     require("plugins.configs.indent_blankline")
  --   end,
  -- }

  -- use {
  --   "goolord/alpha-nvim",
  --   -- after = "base46",
  --   config = function()
  --     require "plugins.configs.alpha"
  --   end,
  -- }

  -- use { "kyazdani42/nvim-web-devicons",
  --   -- after = "ui",
  --   module = "nvim-web-devicons",
  --   config = function()
  --     require("plugins.configs.others").devicons()
  --   end,
  -- }

  -- use {
  --   "NvChad/nvim-colorizer.lua",
  --   opt = true,
  --   setup = function()
  --     require("core.lazy_load").on_file_open "nvim-colorizer.lua"
  --   end,
  --   config = function()
  --     require("plugins.configs.colorizer")
  --   end,
  -- }
  use {
    "nvim-treesitter/nvim-treesitter",
    module = "nvim-treesitter",
    setup = function()
      require("core.lazy_load").on_file_open "nvim-treesitter"
    end,
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSEnable", "TSDisable", "TSModuleInfo" },
    run = ":TSUpdate",
    config = function()
      require "plugins.configs.treesitter"
    end,
  }
  -- use {
  --   "lewis6991/gitsigns.nvim",
  --   ft = "gitcommit",
  --   setup = function()
  --     autocmd({ "BufRead" }, {
  --       group = vim.api.nvim_create_augroup("GitSignsLazyLoad", { clear = true }),
  --       callback = function()
  --         vim.fn.system("git -C " .. vim.fn.expand "%:p:h" .. " rev-parse")
  --         if vim.v.shell_error == 0 then
  --           vim.api.nvim_del_augroup_by_name "GitSignsLazyLoad"
  --           vim.schedule(function()
  --             require("packer").loader "gitsigns.nvim"
  --           end)
  --         end
  --       end,
  --     })
  --   end,
  --   config = function()
  --     require("plugins.configs.gitsigns")
  --   end,
  -- }
  -- use {
  --   "williamboman/mason.nvim",
  --   cmd = {
  --     "Mason",
  --     "MasonInstall",
  --     "MasonInstallAll",
  --     "MasonUninstall",
  --     "MasonUninstallAll",
  --     "MasonLog"
  --   },
  --   config = function()
  --     require "plugins.configs.mason"
  --   end,
  -- }
  -- use {
  --   "neovim/nvim-lspconfig",
  --   opt = true,
  --   setup = function()
  --     require("core.lazy_load").on_file_open "nvim-lspconfig"
  --   end,
  --   config = function()
  --     require "plugins.configs.lspconfig"
  --   end,
  -- }
  -- use { "hrsh7th/cmp-nvim-lua" }
  -- use { "hrsh7th/cmp-nvim-lsp", after = "cmp-nvim-lua" }
  -- use { "hrsh7th/cmp-buffer", after = "cmp-nvim-lsp" }
  -- use { "hrsh7th/cmp-path", after = "cmp-buffer" }

  -- use { "numToStr/Comment.nvim",
  --   module = "Comment",
  --   keys = { "gc", "gb" },
  --   config = function()
  --     require("plugins.configs.comment")
  --   end,
  --   setup = function()
  --     -- require("core.utils").load_mappings "comment"
  --   end,
  -- }

  -- use {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   branch = "v2.x",
  --   requires = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
  --     "MunifTanjim/nui.nvim",
  --     -- {
  --     --   -- only needed if you want to use the commands with "_with_window_picker" suffix
  --     --   's1n7ax/nvim-window-picker',
  --     --   tag = "v1.*",
  --     --   config = function()
  --     --     require 'window-picker'.setup({
  --     --       autoselect_one = true,
  --     --       include_current = false,
  --     --       filter_rules = {
  --     --         -- filter using buffer options
  --     --         bo = {
  --     --           -- if the file type is one of following, the window will be ignored
  --     --           filetype = { 'neo-tree', "neo-tree-popup", "notify" },

  --     --           -- if the buffer type is one of following, the window will be ignored
  --     --           buftype = { 'terminal', "quickfix" },
  --     --         },
  --     --       },
  --     --       other_win_hl_color = '#e35e4f',
  --     --     })
  --     --   end,
  --     -- },
  --   },
  --   config = function()
  --     require "plugins.configs.neo-tree"
  --   end
  -- }

  -- use { "nvim-telescope/telescope.nvim",
  --   cmd = "Telescope",
  --   config = function()
  --     require "plugins.configs.telescope"
  --   end,
  --   setup = function()
  --     -- require("core.utils").load_mappings "telescope"
  --   end,
  -- }

  -- use { "folke/which-key.nvim",
  --   -- module = "which-key",
  --   keys = { "<leader>", '"', "'", "`" },
  --   config = function()
  --     require "plugins.configs.whichkey"
  --   end,
  --   setup = function()
  --     -- require("core.utils").load_mappings "whichkey"
  --   end,
  -- }

  -- themes
  -- use { 'folke/tokyonight.nvim',
  --   setup = function()
  --     require "plugins.configs.themes.tokyonight_setup"
  --   end,
  -- }

  require "plugins.configs.themes.tokyonight" (use)
  -- require "plugins.configs.themes.nightfox" (use)
end
