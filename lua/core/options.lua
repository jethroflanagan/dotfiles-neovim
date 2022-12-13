local opt = vim.opt
local g = vim.g

if g.neovide then
  g.neovide_scroll_animation_length = 0 -- 0.2
  g.neovide_cursor_animation_length = 0
  g.neovide_cursor_trail_size = 0.5
  -- g.neovide_cursor_vfx_mode = "railgun"
  -- g.neovide_cursor_vfx_particle_density = 17.0
  g.neovide_refresh_rate = 60
  g.neovide_refresh_rate_idle = 60
  g.neovide_input_macos_alt_is_meta = true
  g.neovide_remember_window_size = true
end

g.transparency = false
g.theme_switcher_loaded = false
g.highlighturl_enabled = true
g.mapleader = " "
-- g.icons_enabled = true
-- g.autoformat_enabled = true

opt.laststatus = 3 -- global statusline
opt.showmode = false
opt.swapfile = false
opt.undofile = true
opt.clipboard = "unnamedplus"
opt.cursorline = true

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false

-- disable nvim intro
opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"

opt.cmdheight = 0
opt.relativenumber = true
opt.timeoutlen = 300
opt.completeopt = { "menuone", "noselect" }
opt.expandtab = true -- Enable the use of space in tab
opt.preserveindent = true -- Preserve indent structure as much as possible
-- opt.cmp_enabled = true -- enable completion at start
-- opt.autopairs_enabled = true -- enable autopairs at start
-- opt.diagnostics_enabled = true -- enable diagnostics at start
opt.scrollopt = "ver,hor,jump"
opt.wrap = false
opt.tw = 0 -- no wrap
opt.sidescroll = 8
opt.scrolloff = 8

-- disable some builtin vim plugins
local default_plugins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
  "tutor",
  "rplugin",
  "syntax",
  "synmenu",
  "optwin",
  "compiler",
  "bugreport",
  "ftplugin",
}

for _, plugin in pairs(default_plugins) do
  g["loaded_" .. plugin] = 1
end

local default_providers = {
  "node",
  "perl",
  "python3",
  "ruby",
}

for _, provider in ipairs(default_providers) do
  vim.g["loaded_" .. provider .. "_provider"] = 0
end
