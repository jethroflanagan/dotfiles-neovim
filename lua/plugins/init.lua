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
    require "plugins.devicons" (use)
    require "plugins.alpha" (use)
    require "plugins.autopairs" (use)
    require "plugins.bufdelete" (use)
    -- require "plugins.codewindow" (use)
    require "plugins.comment" (use)
    require "plugins.dressing" (use)
    require "plugins.feline" (use)
    -- require "plugins.indent_blankline" (use)
    -- require "plugins.nvim-reload" (use)
    require "plugins.lsp-zero" (use)
    require "plugins.mini" (use)
    require "plugins.neo-tree" (use)
    require "plugins.neoscroll" (use)
    require "plugins.scrollbar" (use)
    require "plugins.session-manager" (use)
    require "plugins.telescope" (use)
    require "plugins.treesitter" (use)
    require "plugins.vim-cursorline" (use)
    require "plugins.vim-visual-multi" (use)
    require "plugins.which-key" (use)
    
    -- themes
    require "plugins.themes.nightfox" (use)
    require "plugins.themes.tokyonight" (use)
  end
)


if packer_bootstrap then
  require('packer').sync()
end

-- require("lspconfig").sumneko_lua.setup {}
