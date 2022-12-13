-- setup packer + plugins
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd "packadd packer.nvim"

local packer = require "packer"

packer.init({
  auto_clean = true,
  compile_on_sync = true,
  git = { clone_timeout = 6000 },
  display = {
    working_sym = "ﲊ",
    error_sym = "✗ ",
    done_sym = " ",
    removed_sym = " ",
    moved_sym = "",
    open_fn = function()
      return require("packer.util").float { border = "single" }
    end,
  },
})

packer.startup(
  function(use)
    require "plugins.packer" (use)
    require "plugins.plenary" (use)
    require "plugins.impatient" (use)
    require "plugins.cmp" (use)
    require "plugins.autopairs" (use)
    require "plugins.indent_blankline" (use)
    require "plugins.alpha" (use)
    require "plugins.treesitter" (use)
    require "plugins.mason" (use)
    require "plugins.nvim-lspconfig" (use) -- TODO: problem
    require "plugins.cmp-nvim-lua" (use)
    require "plugins.cmp-nvim-lsp" (use)
    require "plugins.cmp-nvim-buffer" (use)
    require "plugins.cmp-nvim-path" (use)
    require "plugins.comment" (use)
    require "plugins.neo-tree" (use)
    require "plugins.telescope" (use)
    require "plugins.which-key" (use)
    require "plugins.themes.nightfox" (use)
    require "plugins.themes.tokyonight" (use)

    vim.cmd("colorscheme tokyonight")
    -- use {
    --   "",
    --   after = "which-key",
    --   config = function()
    --     require "core.mappings"
    --     require "plugins.mappings"
    --   end,
    -- }

  end
)

if packer_bootstrap then
  require('packer').sync()
end
