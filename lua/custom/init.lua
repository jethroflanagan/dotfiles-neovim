local opt = vim.opt
local g = vim.g

if vim.g.neovide then
  vim.g.neovide_scroll_animation_length = 0 -- 0.2
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_trail_size = 0.5
  -- vim.g.neovide_cursor_vfx_mode = "railgun"
  -- vim.g.neovide_cursor_vfx_particle_density = 17.0
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_refresh_rate_idle = 60
  vim.g.neovide_input_macos_alt_is_meta = true
  vim.g.neovide_remember_window_size = true
end

opt.cmdheight = 0
opt.relativenumber = true
opt.timeoutlen = 300
opt.completeopt = { "menuone", "noselect" }
opt.expandtab = true -- Enable the use of space in tab
opt.preserveindent = true -- Preserve indent structure as much as possible
opt.cmp_enabled = true -- enable completion at start
opt.autopairs_enabled = true -- enable autopairs at start
opt.diagnostics_enabled = true -- enable diagnostics at start
opt.scrollopt = "ver,hor,jump"
opt.wrap = false
opt.tw = 0 -- no wrap
opt.sidescroll = 8
-- opt.listchars += "preceded:<,extends:>"
