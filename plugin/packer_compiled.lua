-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/jethroflanagan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/jethroflanagan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/jethroflanagan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/jethroflanagan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/jethroflanagan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\nS\0\0\6\0\4\0\f6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0004\2\0\0009\3\3\1\18\5\2\0B\3\2\1K\0\1\0\nsetup\fComment\frequire\npcall\0" },
    keys = { { "", "gc" }, { "", "gb" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\1\6\0\0196\0\0\0009\0\1\0009\0\2\0-\2\0\0+\3\2\0+\4\1\0+\5\2\0B\0\5\2\14\0\0\0X\1\1�'\0\3\0006\1\0\0009\1\1\0019\1\4\1\18\3\0\0'\4\5\0+\5\1\0B\1\4\1K\0\1\0\3�\vnormal\18nvim_feedkeys\5\27nvim_replace_termcodes\bapi\bvim�\2\1\3\b\0\16\0\28\18\5\0\0009\3\0\0'\6\1\0'\a\2\0B\3\4\2\18\5\3\0009\3\0\3'\6\3\0'\a\4\0B\3\4\0025\4\5\0=\1\6\4=\0\a\4\15\0\2\0X\5\6�5\5\t\0>\3\2\5>\2\3\0055\6\n\0>\6\4\5=\5\b\0045\5\v\0=\1\f\0053\6\r\0=\6\14\5=\4\15\0052\0\0�L\5\2\0\topts\ron_press\0\bval\1\0\1\ttype\vbutton\1\0\2\vsilent\2\fnoremap\2\1\2\0\0\6n\vkeymap\rshortcut\ttext\1\0\5\ahl\17AlphaButtons\rposition\vcenter\nwidth\3$\19align_shortcut\nright\vcursor\3\5\r<leader>\bSPC\5\a%s\tgsub0\0\0\2\1\3\0\0056\0\0\0009\0\1\0-\1\0\0=\1\2\0K\0\1\0\0�\15laststatus\bopt\bvim�\1\1\0\6\0\t\0\0176\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0005\4\6\0003\5\a\0=\5\b\4B\1\3\0016\1\0\0009\1\1\1)\2\0\0=\2\2\0012\0\0�K\0\1\0\rcallback\0\1\0\1\vbuffer\3\0\14BufUnload\24nvim_create_autocmd\bapi\15laststatus\bopt\bvim�\14\1\0\14\0/\3^6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0V�3\2\3\0006\3\4\0009\3\5\3*\4\0\0009\5\6\0035\a\a\0009\b\b\0039\n\t\3)\f\0\0B\n\2\2\"\n\4\nB\b\2\0?\b\1\0B\5\2\0025\6\15\0005\a\n\0005\b\v\0=\b\f\a5\b\r\0=\b\14\a=\a\16\0065\a\17\0004\b\6\0\18\t\2\0'\v\18\0'\f\19\0'\r\20\0B\t\4\2>\t\1\b\18\t\2\0'\v\21\0'\f\22\0'\r\23\0B\t\4\2>\t\2\b\18\t\2\0'\v\24\0'\f\25\0'\r\26\0B\t\4\2>\t\3\b\18\t\2\0'\v\24\0'\f\27\0'\r\28\0B\t\4\2>\t\4\b\18\t\2\0'\v\29\0'\f\30\0'\r\31\0B\t\4\0?\t\2\0=\b\f\a5\b \0=\b\14\a=\a!\0065\a\"\0=\5\f\a=\a#\0065\a$\0=\a%\0069\a&\0015\t'\0004\n\5\0009\v#\6>\v\1\n9\v\16\6>\v\2\n9\v%\6>\v\3\n9\v!\6>\v\4\n=\n(\t4\n\0\0=\n\14\tB\a\2\0016\a\4\0009\a)\a9\a*\a'\t+\0005\n,\0003\v-\0=\v.\nB\a\3\1K\0\1\0K\0\1\0\rcallback\0\1\0\1\fpattern\nalpha\rFileType\24nvim_create_autocmd\bapi\vlayout\1\0\0\nsetup\24headerPaddingBottom\1\0\2\ttype\fpadding\bval\3\2\21headerPaddingTop\1\0\1\ttype\fpadding\fbuttons\1\0\1\fspacing\3\1\25:Telescope marks<CR>\21  Bookmarks  \fSPC b m\14:enew<CR>\20  New File  \29:Telescope live_grep<CR>\21  Find Word  \fSPC f w\28:Telescope oldfiles<CR>\23  Recent File  \fSPC f o\30:Telescope find_files<CR>\21  Find File  \fSPC f f\1\0\1\ttype\ngroup\vheader\1\0\0\topts\1\0\2\ahl\16AlphaHeader\rposition\vcenter\bval\1\f\0\0J   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          X    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       F          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     N           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    L          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ^   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  X  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   b ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  \\ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ P      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     V       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     \1\0\1\ttype\ttext\14winheight\nfloor\1\2\0\0\3\2\bmax\afn\bvim\0\nalpha\frequire\npcall�̙�\6����\3\5����\4\v����\4\0" },
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["cmp-buffer"] = {
    after = { "cmp-path" },
    after_files = { "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    after = { "cmp-buffer" },
    after_files = { "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\6\0\t\0\0166\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0029\3\b\1\18\5\2\0B\3\2\1K\0\1\0\nsetup\20buftype_exclude\1\2\0\0\rterminal\21filetype_exclude\1\n\0\0\thelp\rterminal\nalpha\vpacker\flspinfo\20TelescopePrompt\21TelescopeResults\nmason\5\1\0\5#show_trailing_blankline_indent\1\23indentLine_enabled\3\1\31show_current_context_start\2\25show_current_context\2\28show_first_indent_level\1\21indent_blankline\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["mason.nvim"] = {
    commands = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0o\0\0\a\1\a\0\f6\0\0\0009\0\1\0'\2\2\0006\3\3\0009\3\4\3-\5\0\0009\5\5\5'\6\6\0B\3\3\2&\2\3\2B\0\2\1K\0\1\0\2�\6 \21ensure_installed\vconcat\ntable\18MasonInstall \bcmd\bvim�\5\1\0\b\0\26\0+6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0#�6\2\3\0009\2\4\0029\2\5\2'\4\6\0005\5\a\0B\2\3\0016\2\3\0009\2\4\0029\2\b\2'\4\t\0005\5\n\0003\6\v\0=\6\f\5B\2\3\0015\2\14\0005\3\r\0=\3\15\0025\3\17\0005\4\16\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0026\3\3\0009\3\4\0039\3\22\3'\5\23\0003\6\24\0004\a\0\0B\3\4\0019\3\25\1\18\5\2\0B\3\2\0012\0\0�K\0\1\0K\0\1\0\nsetup\0\20MasonInstallAll\29nvim_create_user_command\aui\fkeymaps\1\0\b\19install_server\6i\25toggle_server_expand\t<CR>\21uninstall_server\6X\27check_outdated_servers\6C\24cancel_installation\n<C-c>\23update_all_servers\6U\25check_server_version\6c\18update_server\6u\nicons\1\0\0\1\0\3\20package_pending\t \24package_uninstalled\t ﮊ\22package_installed\t \21ensure_installed\1\0\2\30max_concurrent_installers\3\n\tPATH\tskip\1\2\0\0\24lua-language-server\rcallback\0\1\0\2\fpattern\nmason\ngroup\v_mason\rFiletype\24nvim_create_autocmd\1\0\1\nclear\2\v_mason\24nvim_create_augroup\bapi\bvim\nmason\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n�\20\0\0\a\0C\0c6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\29\0005\5\28\0=\5\30\4=\4\31\3=\3 \0025\3!\0005\4\"\0=\4#\0035\4%\0005\5$\0=\5&\0045\5'\0005\6(\0=\6)\5=\5*\0045\5+\0005\6,\0=\6)\5=\5-\4=\4.\3=\3/\0024\3\0\0=\0030\0025\0037\0005\0041\0004\5\0\0=\0052\0044\5\0\0=\0053\0044\5\0\0=\0054\0044\5\0\0=\0055\0044\5\0\0=\0056\4=\0048\0035\4:\0005\0059\0=\5.\4=\4/\3=\3;\0025\3<\0005\4>\0005\5=\0=\5.\4=\4/\3=\3?\0025\3B\0005\4@\0005\5A\0=\5.\4=\4/\3=\3\31\2B\0\2\1K\0\1\0\1\0\0\1\0\a\agu\21git_unstage_file\agp\rgit_push\6A\16git_add_all\agc\15git_commit\agr\20git_revert_file\aga\17git_add_file\agg\24git_commit_and_push\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\t<bs>\16navigate_up\6.\rset_root\abd\18buffer_delete\1\0\3\21group_empty_dirs\2\24follow_current_file\2\18show_unloaded\2\15filesystem\1\0\0\1\0\t\6/\17fuzzy_finder\a[g\22prev_git_modified\n<c-x>\17clear_filter\6f\21filter_on_submit\6D\27fuzzy_finder_directory\6.\rset_root\6H\18toggle_hidden\t<bs>\16navigate_up\a]g\22next_git_modified\19filtered_items\1\0\4\21group_empty_dirs\1\24follow_current_file\1\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\22\6S\15open_split\6C\15close_node\6R\frefresh\6x\21cut_to_clipboard\6r\vrename\6p\25paste_from_clipboard\6d\vdelete\6t\16open_tabnew\6c\tcopy\n<esc>\19revert_preview\t<cr>\topen\18<2-LeftMouse>\topen\6s\16open_vsplit\6q\17close_window\6<\16prev_source\6?\14show_help\6>\16next_source\6m\tmove\6y\22copy_to_clipboard\6A\18add_directory\6w\28open_with_window_picker\6z\20close_all_nodes\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\nadded\5\rconflict\b\vstaged\b\runstaged\b\rmodified\5\fignored\b\14untracked\b\frenamed\b\fdeleted\b✖\tname\1\0\3\26use_git_status_colors\2\19trailing_slash\1\14highlight\20NeoTreeFileName\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\18folder_closed\b\fdefault\6*\14highlight\20NeoTreeFileIcon\17folder_empty\bﰊ\16folder_open\b\vindent\1\0\t\14highlight\24NeoTreeIndentMarker\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\fpadding\3\1\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\16indent_size\3\2\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\26sort_case_insensitive\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\nsetup\rneo-tree\frequire\1\0\2\vtexthl\23DiagnosticSignHint\ttext\b\23DiagnosticSignHint\1\0\2\vtexthl\23DiagnosticSignInfo\ttext\t \23DiagnosticSignInfo\1\0\2\vtexthl\23DiagnosticSignWarn\ttext\t \23DiagnosticSignWarn\1\0\2\vtexthl\24DiagnosticSignError\ttext\t \24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0" },
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nightfox.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\a\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\b\0006\4\3\0009\4\4\0049\4\5\4'\6\6\0B\4\2\2'\5\a\0&\4\5\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0034\4\0\0=\4\14\3=\3\16\0024\3\0\0=\3\17\0024\3\0\0=\3\18\0024\3\0\0=\3\19\2B\0\2\1K\0\1\0\vgroups\nspecs\rpalettes\foptions\1\0\0\fmodules\finverse\1\0\3\vvisual\1\16match_paren\1\vsearch\1\vstyles\1\0\n\14functions\tNONE\17conditionals\tNONE\ntypes\tNONE\rcomments\tNONE\14constants\tNONE\14variables\tNONE\fstrings\tNONE\14operators\tNONE\fnumbers\tNONE\rkeywords\tNONE\17compile_path\1\0\5\24compile_file_suffix\14_compiled\20terminal_colors\2\19module_default\2\17dim_inactive\1\16transparent\1\14/nightfox\ncache\fstdpath\afn\bvim\nsetup\rnightfox\frequire\0" },
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n�\2\0\0\f\0\14\0 6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\15\0\0\0X\4\2�\14\0\2\0X\4\1�K\0\1\0005\4\4\0004\5\0\0=\5\5\0045\5\6\0=\5\a\0049\5\b\1\18\a\4\0B\5\2\0016\5\1\0'\a\t\0B\5\2\0029\6\n\3\18\b\6\0009\6\v\6'\t\f\0009\n\r\5B\n\1\0A\6\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\nsetup\21disable_filetype\1\3\0\0\20TelescopePrompt\bvim\14fast_wrap\1\0\0\bcmp\19nvim-autopairs\frequire\npcall\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "nvim-autopairs" },
    config = { "\27LJ\2\n�\1\0\1\3\0\b\0\0264\1\t\0005\2\0\0>\0\2\2>\2\1\0015\2\1\0>\0\2\2>\2\2\0015\2\2\0>\0\2\2>\2\3\0015\2\3\0>\0\2\2>\2\4\0015\2\4\0>\0\2\2>\2\5\0015\2\5\0>\0\2\2>\2\6\0015\2\6\0>\0\2\2>\2\a\0015\2\a\0>\0\2\2>\2\b\1L\1\2\0\1\2\0\0\b│\1\2\0\0\b╰\1\2\0\0\b─\1\2\0\0\b╯\1\2\0\0\b│\1\2\0\0\b╮\1\2\0\0\b─\1\2\0\0\b╭0\0\1\4\0\2\0\6\18\3\0\0009\1\0\0B\1\2\2+\2\1\0=\2\1\1L\1\2\0\15scrollable\ninfo_N\0\2\a\0\5\0\n6\2\1\0009\2\2\2'\4\3\0006\5\4\0009\6\0\0018\5\6\0059\6\0\1B\2\4\2=\2\0\1L\1\2\0\nicons\n%s %s\vformat\vstring\tkindR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\21select_next_item\fvisibleR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\21select_prev_item\fvisible�\a\1\0\n\0009\0d6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0\\�6\2\3\0009\2\4\2'\3\6\0=\3\5\0023\2\a\0006\3\1\0'\5\b\0B\3\2\0029\4\n\3=\4\t\0033\4\v\0=\4\n\0035\4\20\0005\5\15\0005\6\r\0\18\a\2\0'\t\f\0B\a\2\2=\a\14\6=\6\16\0055\6\18\0\18\a\2\0'\t\17\0B\a\2\2=\a\14\6=\6\19\5=\5\21\0045\5\23\0003\6\22\0=\6\24\5=\5\25\0045\5\28\0009\6\26\0019\6\27\6B\6\1\2=\6\29\0059\6\26\0019\6\30\6B\6\1\2=\6\31\0059\6\26\0019\6 \6)\b��B\6\2\2=\6!\0059\6\26\0019\6 \6)\b\4\0B\6\2\2=\6\"\0059\6\26\0019\6#\6B\6\1\2=\6$\0059\6\26\0019\6%\6B\6\1\2=\6&\0059\6\26\0019\6'\0065\b*\0009\t(\0019\t)\t=\t+\bB\6\2\2=\6,\0059\6\26\0013\b-\0005\t.\0B\6\3\2=\6/\0059\6\26\0013\b0\0005\t1\0B\6\3\2=\0062\5=\5\26\0044\5\5\0005\0063\0>\6\1\0055\0064\0>\6\2\0055\0065\0>\6\3\0055\0066\0>\6\4\5=\0057\0049\0058\1\18\a\4\0B\5\2\0012\0\0�K\0\1\0K\0\1\0\nsetup\fsources\1\0\1\tname\tpath\1\0\1\tname\rnvim_lua\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\15formatting\vformat\1\0\0\0\vwindow\1\0\0\18documentation\1\0\0\17CmpDocBorder\15completion\1\0\0\vborder\1\0\1\17winhighlight4Normal:CmpPmenu,CursorLine:PmenuSel,Search:None\14CmpBorder\0\tinfo\ninfo_\21cmp.utils.window\0\26menu,menuone,noselect\16completeopt\6o\bvim\bcmp\frequire\npcall\0" },
    loaded = true,
    only_config = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n�\1\0\2\4\0\4\0\v9\2\0\0+\3\1\0=\3\1\0029\2\0\0+\3\1\0=\3\2\0029\2\0\0009\2\3\2\15\0\2\0X\3\0�K\0\1\0\26signatureHelpProvider$documentRangeFormattingProvider\31documentFormattingProvider\24server_capabilities�\6\1\0\r\0*\0D6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0<�4\2\0\0003\3\4\0=\3\3\0026\3\6\0009\3\a\0039\3\b\0039\3\t\3B\3\1\2=\3\5\0029\3\5\0029\3\n\0039\3\v\0035\4\14\0005\5\r\0=\5\15\0045\5\17\0005\6\16\0=\6\18\5=\5\19\0045\5\21\0005\6\20\0=\6\22\5=\5\23\4=\4\f\0039\3\24\0019\3\25\0035\5\26\0009\6\3\2=\6\3\0059\6\5\2=\6\5\0055\6'\0005\a\30\0005\b\28\0005\t\27\0=\t\29\b=\b\31\a5\b$\0004\t\0\b6\n\6\0009\n \n9\n!\n'\f\"\0B\n\2\2+\v\2\0<\v\n\t6\n\6\0009\n \n9\n!\n'\f#\0B\n\2\2+\v\2\0<\v\n\t=\t%\b=\b&\a=\a(\6=\6)\5B\3\2\0012\0\0�L\2\2\0K\0\1\0\rsettings\bLua\1\0\0\14workspace\flibrary\1\0\2\15maxPreload\3��\6\20preloadFileSize\3�N\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\1\0\0\nsetup\16sumneko_lua\19resolveSupport\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\15tagSupport\rvalueSet\1\0\0\1\2\0\0\3\1\24documentationFormat\1\0\6\28commitCharactersSupport\2\22deprecatedSupport\2\24labelDetailsSupport\2\25insertReplaceSupport\2\21preselectSupport\2\19snippetSupport\2\1\3\0\0\rmarkdown\14plaintext\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\17capabilities\0\14on_attach\14lspconfig\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    commands = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSEnable", "TSDisable", "TSModuleInfo" },
    config = { "\27LJ\2\n�\3\0\0\a\0\21\0\0276\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0005\6\f\0=\6\r\5=\5\14\0045\5\15\0=\5\16\0045\5\17\0=\5\18\0045\5\19\0=\5\20\4B\2\2\1K\0\1\0\vindent\1\0\1\venable\1\26incremental_selection\1\0\1\venable\2\fautotag\1\0\1\venable\2\frainbow\fdisable\1\2\0\0\thtml\1\0\2\venable\2\18extended_mode\1\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\0\1\b\0\0\blua\bvim\bcss\thtml\15javascript\15typescript\truby\nsetup\28nvim-treesitter.configs\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\2\na\0\0\b\2\3\0\f6\0\0\0-\2\0\0009\2\1\2B\0\2\4X\3\4�-\5\1\0009\5\2\5\18\a\4\0B\5\2\1E\3\3\3R\3�\127K\0\1\0\2�\1�\19load_extension\20extensions_list\vipairs�\n\1\0\t\0003\0U6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0M�6\2\3\0009\2\4\2+\3\2\0=\3\5\0025\2-\0005\3\a\0005\4\6\0=\4\b\0035\4\n\0005\5\t\0=\5\v\0045\5\f\0=\5\r\4=\4\14\0036\4\1\0'\6\15\0B\4\2\0029\4\16\4=\4\17\0035\4\18\0=\4\19\0036\4\1\0'\6\15\0B\4\2\0029\4\20\4=\4\21\0035\4\22\0=\4\23\0034\4\0\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0036\4\1\0'\6\29\0B\4\2\0029\4\30\0049\4\31\4=\4 \0036\4\1\0'\6\29\0B\4\2\0029\4!\0049\4\31\4=\4\"\0036\4\1\0'\6\29\0B\4\2\0029\4#\0049\4\31\4=\4$\0036\4\1\0'\6\29\0B\4\2\0029\4%\4=\4%\0035\4*\0005\5(\0006\6\1\0'\b&\0B\6\2\0029\6'\6=\6)\5=\5+\4=\4,\3=\3.\0025\3/\0=\0030\0029\0031\1\18\5\2\0B\3\2\0016\3\0\0003\0052\0B\3\2\0012\0\0�K\0\1\0K\0\1\0\0\nsetup\20extensions_list\1\3\0\0\vthemes\nterms\rdefaults\1\0\0\rmappings\6n\1\0\0\6q\1\0\0\nclose\22telescope.actions\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b─\b│\b─\b│\b╭\b╮\b╯\b╰\vborder\17path_display\1\2\0\0\rtruncate\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\1\2\0\0\17node_modules\16file_sorter\19get_fuzzy_file\22telescope.sorters\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\3\vheight\4����\t����\3\19preview_cutoff\3x\nwidth\4����\3����\3\1\0\3\20prompt_position\btop\18results_width\4����\t����\3\18preview_width\4����\t����\3\22vimgrep_arguments\1\0\t\17initial_mode\vinsert\20layout_strategy\15horizontal\21sorting_strategy\14ascending\23selection_strategy\nreset\17entry_prefix\a  \20selection_caret\a  \18prompt_prefix\v   \19color_devicons\2\rwinblend\3\0\1\t\0\0\arg\a-L\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\26theme_switcher_loaded\6g\bvim\14telescope\frequire\npcall\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0�\2\0\2\5\0\19\0%'\2\0\0005\3\3\0009\4\2\1=\4\4\0039\4\5\1=\4\6\3=\3\1\0005\3\b\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\a\0005\3\n\0=\2\4\3=\3\t\0005\3\f\0=\2\4\3=\2\6\3=\3\v\0005\3\14\0=\2\4\3=\2\6\3=\3\r\0005\3\16\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\15\0005\3\18\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\17\0K\0\1\0\1\0\0\26TelescopeResultsTitle\1\0\0\26TelescopePreviewTitle\1\0\0\25TelescopePromptTitle\1\0\0\26TelescopePromptBorder\1\0\0\26TelescopePromptNormal\1\0\0\20TelescopeBorder\afg\ffg_dark\abg\1\0\0\fbg_dark\20TelescopeNormal\f#2d3149�\3\1\0\5\0\21\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0034\4\0\0=\4\t\0034\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0023\3\14\0=\3\15\0023\3\16\0=\3\17\2B\0\2\0016\0\18\0009\0\19\0'\2\20\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd\bvim\18on_highlights\0\14on_colors\0\rsidebars\1\3\0\0\aqf\thelp\vstyles\14variables\14functions\rkeywords\1\0\1\vitalic\2\rcomments\1\0\2\vfloats\tdark\rsidebars\tdark\1\0\1\vitalic\2\1\0\b\29hide_inactive_statusline\1\20terminal_colors\2\17dim_inactive\1\16light_style\bday\16transparent\1\17lualine_bold\1\nstyle\nnight\19day_brightness\4��̙\3����\3\nsetup\15tokyonight\frequire\0" },
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\6\0\23\0\"6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\15\0005\4\14\0=\4\16\0035\4\17\0=\4\18\3=\3\19\0029\3\20\1\18\5\2\0B\3\2\0016\3\1\0'\5\21\0B\3\2\0016\3\1\0'\5\22\0B\3\2\1K\0\1\0\21plugins.mappings\18core.mappings\nsetup\23triggers_blacklist\6v\1\3\0\0\6j\6k\6i\1\0\0\1\3\0\0\6j\6k\vhidden\1\t\0\0\r<silent>\n<cmd>\n<Cmd>\t<CR>\tcall\blua\a^:\a^ \vlayout\1\0\1\fspacing\3\6\vwindow\1\0\1\vborder\tnone\19popup_mappings\1\0\2\16scroll_down\n<c-d>\14scroll_up\n<c-u>\nicons\1\0\0\1\0\3\14separator\n  \15breadcrumb\a»\ngroup\6+\14which-key\frequire\npcall\0" },
    keys = { { "", "<leader>" }, { "", '"' }, { "", "'" }, { "", "`" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^Comment"] = "Comment.nvim",
  ["^nvim%-treesitter"] = "nvim-treesitter"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: nvim-treesitter
time([[Setup for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nW\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\20nvim-treesitter\17on_file_open\19core.lazy_load\frequire\0", "setup", "nvim-treesitter")
time([[Setup for nvim-treesitter]], false)
-- Setup for: Comment.nvim
time([[Setup for Comment.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "Comment.nvim")
time([[Setup for Comment.nvim]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n]\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\26indent-blankline.nvim\17on_file_open\19core.lazy_load\frequire\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
-- Setup for: nvim-lspconfig
time([[Setup for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nV\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\19nvim-lspconfig\17on_file_open\19core.lazy_load\frequire\0", "setup", "nvim-lspconfig")
time([[Setup for nvim-lspconfig]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope.nvim")
time([[Setup for telescope.nvim]], false)
-- Setup for: which-key.nvim
time([[Setup for which-key.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "which-key.nvim")
time([[Setup for which-key.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\1\6\0\0196\0\0\0009\0\1\0009\0\2\0-\2\0\0+\3\2\0+\4\1\0+\5\2\0B\0\5\2\14\0\0\0X\1\1�'\0\3\0006\1\0\0009\1\1\0019\1\4\1\18\3\0\0'\4\5\0+\5\1\0B\1\4\1K\0\1\0\3�\vnormal\18nvim_feedkeys\5\27nvim_replace_termcodes\bapi\bvim�\2\1\3\b\0\16\0\28\18\5\0\0009\3\0\0'\6\1\0'\a\2\0B\3\4\2\18\5\3\0009\3\0\3'\6\3\0'\a\4\0B\3\4\0025\4\5\0=\1\6\4=\0\a\4\15\0\2\0X\5\6�5\5\t\0>\3\2\5>\2\3\0055\6\n\0>\6\4\5=\5\b\0045\5\v\0=\1\f\0053\6\r\0=\6\14\5=\4\15\0052\0\0�L\5\2\0\topts\ron_press\0\bval\1\0\1\ttype\vbutton\1\0\2\vsilent\2\fnoremap\2\1\2\0\0\6n\vkeymap\rshortcut\ttext\1\0\5\ahl\17AlphaButtons\rposition\vcenter\nwidth\3$\19align_shortcut\nright\vcursor\3\5\r<leader>\bSPC\5\a%s\tgsub0\0\0\2\1\3\0\0056\0\0\0009\0\1\0-\1\0\0=\1\2\0K\0\1\0\0�\15laststatus\bopt\bvim�\1\1\0\6\0\t\0\0176\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0005\4\6\0003\5\a\0=\5\b\4B\1\3\0016\1\0\0009\1\1\1)\2\0\0=\2\2\0012\0\0�K\0\1\0\rcallback\0\1\0\1\vbuffer\3\0\14BufUnload\24nvim_create_autocmd\bapi\15laststatus\bopt\bvim�\14\1\0\14\0/\3^6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0V�3\2\3\0006\3\4\0009\3\5\3*\4\0\0009\5\6\0035\a\a\0009\b\b\0039\n\t\3)\f\0\0B\n\2\2\"\n\4\nB\b\2\0?\b\1\0B\5\2\0025\6\15\0005\a\n\0005\b\v\0=\b\f\a5\b\r\0=\b\14\a=\a\16\0065\a\17\0004\b\6\0\18\t\2\0'\v\18\0'\f\19\0'\r\20\0B\t\4\2>\t\1\b\18\t\2\0'\v\21\0'\f\22\0'\r\23\0B\t\4\2>\t\2\b\18\t\2\0'\v\24\0'\f\25\0'\r\26\0B\t\4\2>\t\3\b\18\t\2\0'\v\24\0'\f\27\0'\r\28\0B\t\4\2>\t\4\b\18\t\2\0'\v\29\0'\f\30\0'\r\31\0B\t\4\0?\t\2\0=\b\f\a5\b \0=\b\14\a=\a!\0065\a\"\0=\5\f\a=\a#\0065\a$\0=\a%\0069\a&\0015\t'\0004\n\5\0009\v#\6>\v\1\n9\v\16\6>\v\2\n9\v%\6>\v\3\n9\v!\6>\v\4\n=\n(\t4\n\0\0=\n\14\tB\a\2\0016\a\4\0009\a)\a9\a*\a'\t+\0005\n,\0003\v-\0=\v.\nB\a\3\1K\0\1\0K\0\1\0\rcallback\0\1\0\1\fpattern\nalpha\rFileType\24nvim_create_autocmd\bapi\vlayout\1\0\0\nsetup\24headerPaddingBottom\1\0\2\ttype\fpadding\bval\3\2\21headerPaddingTop\1\0\1\ttype\fpadding\fbuttons\1\0\1\fspacing\3\1\25:Telescope marks<CR>\21  Bookmarks  \fSPC b m\14:enew<CR>\20  New File  \29:Telescope live_grep<CR>\21  Find Word  \fSPC f w\28:Telescope oldfiles<CR>\23  Recent File  \fSPC f o\30:Telescope find_files<CR>\21  Find File  \fSPC f f\1\0\1\ttype\ngroup\vheader\1\0\0\topts\1\0\2\ahl\16AlphaHeader\rposition\vcenter\bval\1\f\0\0J   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          X    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       F          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     N           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    L          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ^   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  X  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   b ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  \\ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ P      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     V       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     \1\0\1\ttype\ttext\14winheight\nfloor\1\2\0\0\3\2\bmax\afn\bvim\0\nalpha\frequire\npcall�̙�\6����\3\5����\4\v����\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0�\2\0\2\5\0\19\0%'\2\0\0005\3\3\0009\4\2\1=\4\4\0039\4\5\1=\4\6\3=\3\1\0005\3\b\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\a\0005\3\n\0=\2\4\3=\3\t\0005\3\f\0=\2\4\3=\2\6\3=\3\v\0005\3\14\0=\2\4\3=\2\6\3=\3\r\0005\3\16\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\15\0005\3\18\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\17\0K\0\1\0\1\0\0\26TelescopeResultsTitle\1\0\0\26TelescopePreviewTitle\1\0\0\25TelescopePromptTitle\1\0\0\26TelescopePromptBorder\1\0\0\26TelescopePromptNormal\1\0\0\20TelescopeBorder\afg\ffg_dark\abg\1\0\0\fbg_dark\20TelescopeNormal\f#2d3149�\3\1\0\5\0\21\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0034\4\0\0=\4\t\0034\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0023\3\14\0=\3\15\0023\3\16\0=\3\17\2B\0\2\0016\0\18\0009\0\19\0'\2\20\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd\bvim\18on_highlights\0\14on_colors\0\rsidebars\1\3\0\0\aqf\thelp\vstyles\14variables\14functions\rkeywords\1\0\1\vitalic\2\rcomments\1\0\2\vfloats\tdark\rsidebars\tdark\1\0\1\vitalic\2\1\0\b\29hide_inactive_statusline\1\20terminal_colors\2\17dim_inactive\1\16light_style\bday\16transparent\1\17lualine_bold\1\nstyle\nnight\19day_brightness\4��̙\3����\3\nsetup\15tokyonight\frequire\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\a\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\b\0006\4\3\0009\4\4\0049\4\5\4'\6\6\0B\4\2\2'\5\a\0&\4\5\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0034\4\0\0=\4\14\3=\3\16\0024\3\0\0=\3\17\0024\3\0\0=\3\18\0024\3\0\0=\3\19\2B\0\2\1K\0\1\0\vgroups\nspecs\rpalettes\foptions\1\0\0\fmodules\finverse\1\0\3\vvisual\1\16match_paren\1\vsearch\1\vstyles\1\0\n\14functions\tNONE\17conditionals\tNONE\ntypes\tNONE\rcomments\tNONE\14constants\tNONE\14variables\tNONE\fstrings\tNONE\14operators\tNONE\fnumbers\tNONE\rkeywords\tNONE\17compile_path\1\0\5\24compile_file_suffix\14_compiled\20terminal_colors\2\19module_default\2\17dim_inactive\1\16transparent\1\14/nightfox\ncache\fstdpath\afn\bvim\nsetup\rnightfox\frequire\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n�\20\0\0\a\0C\0c6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\29\0005\5\28\0=\5\30\4=\4\31\3=\3 \0025\3!\0005\4\"\0=\4#\0035\4%\0005\5$\0=\5&\0045\5'\0005\6(\0=\6)\5=\5*\0045\5+\0005\6,\0=\6)\5=\5-\4=\4.\3=\3/\0024\3\0\0=\0030\0025\0037\0005\0041\0004\5\0\0=\0052\0044\5\0\0=\0053\0044\5\0\0=\0054\0044\5\0\0=\0055\0044\5\0\0=\0056\4=\0048\0035\4:\0005\0059\0=\5.\4=\4/\3=\3;\0025\3<\0005\4>\0005\5=\0=\5.\4=\4/\3=\3?\0025\3B\0005\4@\0005\5A\0=\5.\4=\4/\3=\3\31\2B\0\2\1K\0\1\0\1\0\0\1\0\a\agu\21git_unstage_file\agp\rgit_push\6A\16git_add_all\agc\15git_commit\agr\20git_revert_file\aga\17git_add_file\agg\24git_commit_and_push\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\t<bs>\16navigate_up\6.\rset_root\abd\18buffer_delete\1\0\3\21group_empty_dirs\2\24follow_current_file\2\18show_unloaded\2\15filesystem\1\0\0\1\0\t\6/\17fuzzy_finder\a[g\22prev_git_modified\n<c-x>\17clear_filter\6f\21filter_on_submit\6D\27fuzzy_finder_directory\6.\rset_root\6H\18toggle_hidden\t<bs>\16navigate_up\a]g\22next_git_modified\19filtered_items\1\0\4\21group_empty_dirs\1\24follow_current_file\1\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\22\6S\15open_split\6C\15close_node\6R\frefresh\6x\21cut_to_clipboard\6r\vrename\6p\25paste_from_clipboard\6d\vdelete\6t\16open_tabnew\6c\tcopy\n<esc>\19revert_preview\t<cr>\topen\18<2-LeftMouse>\topen\6s\16open_vsplit\6q\17close_window\6<\16prev_source\6?\14show_help\6>\16next_source\6m\tmove\6y\22copy_to_clipboard\6A\18add_directory\6w\28open_with_window_picker\6z\20close_all_nodes\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\nadded\5\rconflict\b\vstaged\b\runstaged\b\rmodified\5\fignored\b\14untracked\b\frenamed\b\fdeleted\b✖\tname\1\0\3\26use_git_status_colors\2\19trailing_slash\1\14highlight\20NeoTreeFileName\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\18folder_closed\b\fdefault\6*\14highlight\20NeoTreeFileIcon\17folder_empty\bﰊ\16folder_open\b\vindent\1\0\t\14highlight\24NeoTreeIndentMarker\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\fpadding\3\1\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\16indent_size\3\2\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\26sort_case_insensitive\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\nsetup\rneo-tree\frequire\1\0\2\vtexthl\23DiagnosticSignHint\ttext\b\23DiagnosticSignHint\1\0\2\vtexthl\23DiagnosticSignInfo\ttext\t \23DiagnosticSignInfo\1\0\2\vtexthl\23DiagnosticSignWarn\ttext\t \23DiagnosticSignWarn\1\0\2\vtexthl\24DiagnosticSignError\ttext\t \24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n�\1\0\1\3\0\b\0\0264\1\t\0005\2\0\0>\0\2\2>\2\1\0015\2\1\0>\0\2\2>\2\2\0015\2\2\0>\0\2\2>\2\3\0015\2\3\0>\0\2\2>\2\4\0015\2\4\0>\0\2\2>\2\5\0015\2\5\0>\0\2\2>\2\6\0015\2\6\0>\0\2\2>\2\a\0015\2\a\0>\0\2\2>\2\b\1L\1\2\0\1\2\0\0\b│\1\2\0\0\b╰\1\2\0\0\b─\1\2\0\0\b╯\1\2\0\0\b│\1\2\0\0\b╮\1\2\0\0\b─\1\2\0\0\b╭0\0\1\4\0\2\0\6\18\3\0\0009\1\0\0B\1\2\2+\2\1\0=\2\1\1L\1\2\0\15scrollable\ninfo_N\0\2\a\0\5\0\n6\2\1\0009\2\2\2'\4\3\0006\5\4\0009\6\0\0018\5\6\0059\6\0\1B\2\4\2=\2\0\1L\1\2\0\nicons\n%s %s\vformat\vstring\tkindR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\21select_next_item\fvisibleR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\21select_prev_item\fvisible�\a\1\0\n\0009\0d6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0\\�6\2\3\0009\2\4\2'\3\6\0=\3\5\0023\2\a\0006\3\1\0'\5\b\0B\3\2\0029\4\n\3=\4\t\0033\4\v\0=\4\n\0035\4\20\0005\5\15\0005\6\r\0\18\a\2\0'\t\f\0B\a\2\2=\a\14\6=\6\16\0055\6\18\0\18\a\2\0'\t\17\0B\a\2\2=\a\14\6=\6\19\5=\5\21\0045\5\23\0003\6\22\0=\6\24\5=\5\25\0045\5\28\0009\6\26\0019\6\27\6B\6\1\2=\6\29\0059\6\26\0019\6\30\6B\6\1\2=\6\31\0059\6\26\0019\6 \6)\b��B\6\2\2=\6!\0059\6\26\0019\6 \6)\b\4\0B\6\2\2=\6\"\0059\6\26\0019\6#\6B\6\1\2=\6$\0059\6\26\0019\6%\6B\6\1\2=\6&\0059\6\26\0019\6'\0065\b*\0009\t(\0019\t)\t=\t+\bB\6\2\2=\6,\0059\6\26\0013\b-\0005\t.\0B\6\3\2=\6/\0059\6\26\0013\b0\0005\t1\0B\6\3\2=\0062\5=\5\26\0044\5\5\0005\0063\0>\6\1\0055\0064\0>\6\2\0055\0065\0>\6\3\0055\0066\0>\6\4\5=\0057\0049\0058\1\18\a\4\0B\5\2\0012\0\0�K\0\1\0K\0\1\0\nsetup\fsources\1\0\1\tname\tpath\1\0\1\tname\rnvim_lua\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\15formatting\vformat\1\0\0\0\vwindow\1\0\0\18documentation\1\0\0\17CmpDocBorder\15completion\1\0\0\vborder\1\0\1\17winhighlight4Normal:CmpPmenu,CursorLine:PmenuSel,Search:None\14CmpBorder\0\tinfo\ninfo_\21cmp.utils.window\0\26menu,menuone,noselect\16completeopt\6o\bvim\bcmp\frequire\npcall\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd cmp-nvim-lua ]]
vim.cmd [[ packadd cmp-nvim-lsp ]]
vim.cmd [[ packadd cmp-buffer ]]
vim.cmd [[ packadd cmp-path ]]
vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\n�\2\0\0\f\0\14\0 6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\15\0\0\0X\4\2�\14\0\2\0X\4\1�K\0\1\0005\4\4\0004\5\0\0=\5\5\0045\5\6\0=\5\a\0049\5\b\1\18\a\4\0B\5\2\0016\5\1\0'\a\t\0B\5\2\0029\6\n\3\18\b\6\0009\6\v\6'\t\f\0009\n\r\5B\n\1\0A\6\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\nsetup\21disable_filetype\1\3\0\0\20TelescopePrompt\bvim\14fast_wrap\1\0\0\bcmp\19nvim-autopairs\frequire\npcall\0", "config", "nvim-autopairs")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'MasonLog', function(cmdargs)
          require('packer.load')({'mason.nvim'}, { cmd = 'MasonLog', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'mason.nvim'}, { cmd = 'MasonLog' }, _G.packer_plugins)
          return vim.fn.getcompletion('MasonLog ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Telescope', function(cmdargs)
          require('packer.load')({'telescope.nvim'}, { cmd = 'Telescope', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'telescope.nvim'}, { cmd = 'Telescope' }, _G.packer_plugins)
          return vim.fn.getcompletion('Telescope ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSModuleInfo', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSModuleInfo', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSModuleInfo' }, _G.packer_plugins)
          return vim.fn.getcompletion('TSModuleInfo ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSDisable', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSDisable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSDisable' }, _G.packer_plugins)
          return vim.fn.getcompletion('TSDisable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSEnable', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSEnable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSEnable' }, _G.packer_plugins)
          return vim.fn.getcompletion('TSEnable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSBufDisable', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSBufDisable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSBufDisable' }, _G.packer_plugins)
          return vim.fn.getcompletion('TSBufDisable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Mason', function(cmdargs)
          require('packer.load')({'mason.nvim'}, { cmd = 'Mason', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'mason.nvim'}, { cmd = 'Mason' }, _G.packer_plugins)
          return vim.fn.getcompletion('Mason ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'MasonInstall', function(cmdargs)
          require('packer.load')({'mason.nvim'}, { cmd = 'MasonInstall', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'mason.nvim'}, { cmd = 'MasonInstall' }, _G.packer_plugins)
          return vim.fn.getcompletion('MasonInstall ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSInstall', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSInstall', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSInstall' }, _G.packer_plugins)
          return vim.fn.getcompletion('TSInstall ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSBufEnable', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSBufEnable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSBufEnable' }, _G.packer_plugins)
          return vim.fn.getcompletion('TSBufEnable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'MasonInstallAll', function(cmdargs)
          require('packer.load')({'mason.nvim'}, { cmd = 'MasonInstallAll', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'mason.nvim'}, { cmd = 'MasonInstallAll' }, _G.packer_plugins)
          return vim.fn.getcompletion('MasonInstallAll ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'MasonUninstall', function(cmdargs)
          require('packer.load')({'mason.nvim'}, { cmd = 'MasonUninstall', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'mason.nvim'}, { cmd = 'MasonUninstall' }, _G.packer_plugins)
          return vim.fn.getcompletion('MasonUninstall ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'MasonUninstallAll', function(cmdargs)
          require('packer.load')({'mason.nvim'}, { cmd = 'MasonUninstallAll', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'mason.nvim'}, { cmd = 'MasonUninstallAll' }, _G.packer_plugins)
          return vim.fn.getcompletion('MasonUninstallAll ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> ` <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "`", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> ' <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "'", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader> <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "<lt>leader>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gb <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> " <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "\"", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)


_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
