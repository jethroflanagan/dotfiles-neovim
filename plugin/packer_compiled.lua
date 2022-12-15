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
    config = { "\27LJ\2\nS\0\0\6\0\4\0\f6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0004\2\0\0009\3\3\1\18\5\2\0B\3\2\1K\0\1\0\nsetup\fComment\frequire\npcall\0" },
    keys = { { "", "gc" }, { "", "gb" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\nä\1\0\0\6\1\6\0\0196\0\0\0009\0\1\0009\0\2\0-\2\0\0+\3\2\0+\4\1\0+\5\2\0B\0\5\2\14\0\0\0X\1\1Ä'\0\3\0006\1\0\0009\1\1\0019\1\4\1\18\3\0\0'\4\5\0+\5\1\0B\1\4\1K\0\1\0\3¿\vnormal\18nvim_feedkeys\5\27nvim_replace_termcodes\bapi\bvimß\2\1\3\b\0\16\0\28\18\5\0\0009\3\0\0'\6\1\0'\a\2\0B\3\4\2\18\5\3\0009\3\0\3'\6\3\0'\a\4\0B\3\4\0025\4\5\0=\1\6\4=\0\a\4\15\0\2\0X\5\6Ä5\5\t\0>\3\2\5>\2\3\0055\6\n\0>\6\4\5=\5\b\0045\5\v\0=\1\f\0053\6\r\0=\6\14\5=\4\15\0052\0\0ÄL\5\2\0\topts\ron_press\0\bval\1\0\1\ttype\vbutton\1\0\2\vsilent\2\fnoremap\2\1\2\0\0\6n\vkeymap\rshortcut\ttext\1\0\5\nwidth\3$\rposition\vcenter\ahl\17AlphaButtons\19align_shortcut\nright\vcursor\3\5\r<leader>\bSPC\5\a%s\tgsub0\0\0\2\1\3\0\0056\0\0\0009\0\1\0-\1\0\0=\1\2\0K\0\1\0\0¿\15laststatus\bopt\bvimñ\1\1\0\6\0\t\0\0176\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0005\4\6\0003\5\a\0=\5\b\4B\1\3\0016\1\0\0009\1\1\1)\2\0\0=\2\2\0012\0\0ÄK\0\1\0\rcallback\0\1\0\1\vbuffer\3\0\14BufUnload\24nvim_create_autocmd\bapi\15laststatus\bopt\bvimõ\14\1\0\14\0/\3^6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0VÄ3\2\3\0006\3\4\0009\3\5\3*\4\0\0009\5\6\0035\a\a\0009\b\b\0039\n\t\3)\f\0\0B\n\2\2\"\n\4\nB\b\2\0?\b\1\0B\5\2\0025\6\15\0005\a\n\0005\b\v\0=\b\f\a5\b\r\0=\b\14\a=\a\16\0065\a\17\0004\b\6\0\18\t\2\0'\v\18\0'\f\19\0'\r\20\0B\t\4\2>\t\1\b\18\t\2\0'\v\21\0'\f\22\0'\r\23\0B\t\4\2>\t\2\b\18\t\2\0'\v\24\0'\f\25\0'\r\26\0B\t\4\2>\t\3\b\18\t\2\0'\v\24\0'\f\27\0'\r\28\0B\t\4\2>\t\4\b\18\t\2\0'\v\29\0'\f\30\0'\r\31\0B\t\4\0?\t\2\0=\b\f\a5\b \0=\b\14\a=\a!\0065\a\"\0=\5\f\a=\a#\0065\a$\0=\a%\0069\a&\0015\t'\0004\n\5\0009\v#\6>\v\1\n9\v\16\6>\v\2\n9\v%\6>\v\3\n9\v!\6>\v\4\n=\n(\t4\n\0\0=\n\14\tB\a\2\0016\a\4\0009\a)\a9\a*\a'\t+\0005\n,\0003\v-\0=\v.\nB\a\3\1K\0\1\0K\0\1\0\rcallback\0\1\0\1\fpattern\nalpha\rFileType\24nvim_create_autocmd\bapi\vlayout\1\0\0\nsetup\24headerPaddingBottom\1\0\2\bval\3\2\ttype\fpadding\21headerPaddingTop\1\0\1\ttype\fpadding\fbuttons\1\0\1\fspacing\3\1\25:Telescope marks<CR>\21ÔÄÆ  Bookmarks  \fSPC b m\14:enew<CR>\20ÔÉæ  New File  \29:Telescope live_grep<CR>\21Ôú¨  Find Word  \fSPC f w\28:Telescope oldfiles<CR>\23Ôúô  Recent File  \fSPC f o\30:Telescope find_files<CR>\21ÔÄÇ  Find File  \fSPC f f\1\0\1\ttype\ngroup\vheader\1\0\0\topts\1\0\2\rposition\vcenter\ahl\16AlphaHeader\bval\1\f\0\0J   ‚£¥‚£∂‚£§‚°§‚†¶‚£§‚£Ä‚£§‚†Ü     ‚£à‚£≠‚£ø‚£∂‚£ø‚£¶‚£º‚£Ü          X    ‚†â‚†ª‚¢ø‚£ø‚†ø‚£ø‚£ø‚£∂‚£¶‚†§‚†Ñ‚°†‚¢æ‚£ø‚£ø‚°ø‚†ã‚†â‚†â‚†ª‚£ø‚£ø‚°õ‚£¶       F          ‚†à‚¢ø‚£ø‚£ü‚†¶ ‚£æ‚£ø‚£ø‚£∑    ‚†ª‚†ø‚¢ø‚£ø‚£ß‚£Ñ     N           ‚£∏‚£ø‚£ø‚¢ß ‚¢ª‚†ª‚£ø‚£ø‚£∑‚£Ñ‚£Ä‚†Ñ‚†¢‚£Ä‚°Ä‚†à‚†ô‚†ø‚†Ñ    L          ‚¢†‚£ø‚£ø‚£ø‚†à    ‚£ª‚£ø‚£ø‚£ø‚£ø‚£ø‚£ø‚£ø‚£õ‚£≥‚£§‚£Ä‚£Ä   ^   ‚¢†‚£ß‚£∂‚£•‚°§‚¢Ñ ‚£∏‚£ø‚£ø‚†ò  ‚¢Ä‚£¥‚£ø‚£ø‚°ø‚†õ‚£ø‚£ø‚£ß‚†à‚¢ø‚†ø‚†ü‚†õ‚†ª‚†ø‚†Ñ  X  ‚£∞‚£ø‚£ø‚†õ‚†ª‚£ø‚£ø‚°¶‚¢π‚£ø‚£∑   ‚¢ä‚£ø‚£ø‚°è  ‚¢∏‚£ø‚£ø‚°á ‚¢Ä‚£†‚£Ñ‚£æ‚†Ñ   b ‚£†‚£ø‚†ø‚†õ ‚¢Ä‚£ø‚£ø‚£∑‚†ò‚¢ø‚£ø‚£¶‚°Ä ‚¢∏‚¢ø‚£ø‚£ø‚£Ñ ‚£∏‚£ø‚£ø‚°á‚£™‚£ø‚°ø‚†ø‚£ø‚£∑‚°Ñ  \\ ‚†ô‚†É   ‚£º‚£ø‚°ü  ‚†à‚†ª‚£ø‚£ø‚£¶‚£å‚°á‚†ª‚£ø‚£ø‚£∑‚£ø‚£ø‚£ø ‚£ø‚£ø‚°á ‚†õ‚†ª‚¢∑‚£Ñ P      ‚¢ª‚£ø‚£ø‚£Ñ   ‚†à‚†ª‚£ø‚£ø‚£ø‚£∑‚£ø‚£ø‚£ø‚£ø‚£ø‚°ü ‚†´‚¢ø‚£ø‚°Ü     V       ‚†ª‚£ø‚£ø‚£ø‚£ø‚£∂‚£∂‚£æ‚£ø‚£ø‚£ø‚£ø‚£ø‚£ø‚£ø‚£ø‚°ü‚¢Ä‚£Ä‚£§‚£æ‚°ø‚†É     \1\0\1\ttype\ttext\14winheight\nfloor\1\2\0\0\3\2\bmax\afn\bvim\0\nalpha\frequire\npcallÁÃô≥\6≥ÊÃ˛\3\5ÄÄ¿ô\4\vÄÄ¿ô\4\0" },
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\n\v\0\1\1\0\0\0\1L\0\2\0\v\0\1\1\0\0\0\1L\0\2\0Ø\t\1\0\6\0001\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\19\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\0035\4\t\0=\4\n\0035\4\f\0005\5\v\0=\5\r\0045\5\14\0=\5\15\4=\4\16\0033\4\17\0=\4\18\3=\3\20\0025\3\21\0005\4\22\0=\4\23\0035\4\25\0005\5\24\0=\5\26\4=\4\27\0035\4\29\0005\5\28\0=\5\30\4=\4\31\0035\4 \0005\5!\0=\5\"\0045\5#\0=\5\b\0045\5$\0=\5\n\4=\4%\0035\4&\0004\5\0\0=\5\b\0045\5'\0=\5\n\0045\5(\0=\5\5\0045\5)\0=\5\a\0045\5*\0=\5+\0045\5,\0=\5\16\0043\5-\0=\5\18\4=\4.\0034\4\0\0=\4/\3=\0030\2B\0\2\1K\0\1\0\vselect\25format_item_override\fbuiltin\0\1\0\3\n<Esc>\nClose\n<C-c>\nClose\t<CR>\fConfirm\15min_height\1\3\0\0\3\n\4ö≥ÊÃ\tô≥¶˛\3\1\3\0\0\3(\4ö≥ÊÃ\tô≥¶˛\3\1\3\0\0\3å\1\4ö≥ÊÃ\tô≥¶ˇ\3\1\0\1\rwinblend\3\n\1\0\4\vborder\frounded\vanchor\aNW\rrelative\veditor\15max_height\4Õô≥Ê\fÃô≥ˇ\3\bnui\1\0\1\rwinblend\3\n\1\0\2\rfiletype\19DressingSelect\rswapfile\1\vborder\1\0\1\nstyle\frounded\1\0\6\rposition\b50%\rrelative\veditor\15min_height\3\n\15max_height\3(\14min_width\3(\14max_width\3P\ffzf_lua\fwinopts\1\0\0\1\0\2\vheight\4ö≥ÊÃ\tô≥Ê˛\3\nwidth\4\0ÄÄÄˇ\3\bfzf\vwindow\1\0\0\1\0\2\vheight\4ö≥ÊÃ\tô≥Ê˛\3\nwidth\4\0ÄÄÄˇ\3\fbackend\1\6\0\0\14telescope\ffzf_lua\bfzf\fbuiltin\bnui\1\0\2\fenabled\2\16trim_prompt\2\ninput\1\0\0\roverride\0\rmappings\6i\1\0\4\t<Up>\16HistoryPrev\n<C-c>\nClose\v<Down>\16HistoryNext\t<CR>\fConfirm\6n\1\0\0\1\0\2\n<Esc>\nClose\t<CR>\fConfirm\16win_options\1\0\2\rwinblend\3\n\twrap\1\16buf_options\14min_width\1\3\0\0\3\20\4ö≥ÊÃ\tô≥¶˛\3\14max_width\1\3\0\0\3å\1\4Õô≥Ê\fÃô≥ˇ\3\1\0\t\vanchor\aSW\20start_in_insert\2\16insert_only\2\rrelative\vcursor\19default_prompt\vInput:\fenabled\2\17prompt_align\tleft\vborder\frounded\17prefer_width\3(\nsetup\rdressing\frequire\0" },
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nÏ\2\0\0\6\0\t\0\0166\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0029\3\b\1\18\5\2\0B\3\2\1K\0\1\0\nsetup\20buftype_exclude\1\2\0\0\rterminal\21filetype_exclude\1\n\0\0\thelp\rterminal\nalpha\vpacker\flspinfo\20TelescopePrompt\21TelescopeResults\nmason\5\1\0\5\23indentLine_enabled\3\1#show_trailing_blankline_indent\1\28show_first_indent_level\1\25show_current_context\2\31show_current_context_start\2\21indent_blankline\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    after = { "nvim-lspconfig" },
    config = { "\27LJ\2\né\1\0\0\3\0\6\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\5\0009\0\2\0004\2\0\0B\0\2\1K\0\1\0\16sumneko_lua\14lspconfig\1\0\1\27automatic_installation\2\nsetup\20mason-lspconfig\frequire\0" },
    load_after = {
      ["mason.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    after = { "mason-lspconfig.nvim" },
    commands = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0o\0\0\a\1\a\0\f6\0\0\0009\0\1\0'\2\2\0006\3\3\0009\3\4\3-\5\0\0009\5\5\5'\6\6\0B\3\3\2&\2\3\2B\0\2\1K\0\1\0\3¿\6 \21ensure_installed\vconcat\ntable\18MasonInstall \bcmd\bvim†\6\1\0\t\0\29\00016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0)Ä6\2\3\0009\2\4\0029\2\5\2'\4\6\0005\5\a\0B\2\3\0016\2\3\0009\2\4\0029\2\b\2'\4\t\0005\5\n\0003\6\v\0=\6\f\5B\2\3\0016\2\1\0'\4\r\0B\2\2\0025\3\17\0006\4\3\0009\4\14\0049\4\15\0049\4\16\4=\4\18\0035\4\19\0005\5\20\0=\5\21\0045\5\22\0=\5\23\4=\4\24\0036\4\3\0009\4\4\0049\4\25\4'\6\26\0003\a\27\0004\b\0\0B\4\4\0019\4\28\1\18\6\3\0B\4\2\0012\0\0ÄK\0\1\0K\0\1\0\nsetup\0\20MasonInstallAll\29nvim_create_user_command\aui\fkeymaps\1\0\t\26apply_language_filter\n<C-f>\24cancel_installation\n<C-c>\22uninstall_package\6X\28check_outdated_packages\6C\24update_all_packages\6U\26check_package_version\6c\19update_package\6u\20install_package\6i\26toggle_package_expand\t<CR>\nicons\1\0\3\22package_installed\b‚óç\24package_uninstalled\b‚óç\20package_pending\b‚óç\1\0\2\vborder\tnone$check_outdated_packages_on_open\2\14log_level\1\0\1\30max_concurrent_installers\3\4\tINFO\vlevels\blog\17plenary.path\rcallback\0\1\0\2\fpattern\nmason\ngroup\v_mason\rFiletype\24nvim_create_autocmd\1\0\1\nclear\2\v_mason\24nvim_create_augroup\bapi\bvim\nmason\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.nvim"] = {
    config = { "\27LJ\2\nˆ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\rmappings\1\0\t\19update_n_lines\asn\freplace\asr\14find_left\asF\tfind\asf\badd\asa\vdelete\asd\14highlight\ash\16suffix_next\6n\16suffix_last\6l\1\0\3\18search_method\ncover\23highlight_duration\3Ù\3\fn_lines\3\20\nsetup\18mini.surround\frequire\0" },
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\nò\16\0\0\a\0002\0A6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0005\3\b\0005\4\a\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0034\4\0\0=\4\18\3=\3\19\0025\3\20\0005\4\21\0=\4\22\0035\4\23\0005\5\24\0005\6\25\0=\6\26\5=\5\27\0045\5\28\0005\6\29\0=\6\26\5=\5\30\4=\4\31\3=\3 \0024\3\0\0=\3!\0025\3)\0005\4\"\0005\5#\0=\5$\0044\5\0\0=\5%\0044\5\0\0=\5&\0044\5\0\0=\5'\0044\5\0\0=\5(\4=\4*\0035\4,\0005\5+\0=\5\31\4=\4 \3=\3-\0025\3.\0005\0040\0005\5/\0=\5\31\4=\4 \3=\0031\2B\0\2\1K\0\1\0\fbuffers\1\0\0\1\0\5\6d\18buffer_delete\6.\rset_root\t<bs>\16navigate_up\6s\16open_vsplit\6S\15open_split\1\0\3\18show_unloaded\2\21group_empty_dirs\2\24follow_current_file\2\15filesystem\1\0\0\1\0\t\6H\18toggle_hidden\a[g\22prev_git_modified\6D\27fuzzy_finder_directory\n<c-x>\17clear_filter\6/\17fuzzy_finder\6.\rset_root\t<bs>\16navigate_up\6f\21filter_on_submit\a]g\22next_git_modified\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_current\21group_empty_dirs\1\24follow_current_file\2\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\6\0\0\14.DS_Store\14thumbs.db\17node_modules\t.git\24packer_compiled.lua\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\1\0\23\6d\vdelete\6t\16open_tabnew\6x\21cut_to_clipboard\6p\25paste_from_clipboard\6c\tcopy\6s\16open_vsplit\6?\14show_help\6z\20close_all_nodes\6q\17close_window\6C\15close_node\6m\tmove\6>\16next_source\6w\28open_with_window_picker\6S\15open_split\6<\16prev_source\n<esc>\19revert_preview\t<cr>\topen\18<2-LeftMouse>\topen\nspace\1\6y\22copy_to_clipboard\6A\18add_directory\6R\frefresh\6r\vrename\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\vsymbol\6*\14highlight\20NeoTreeModified\ticon\1\0\5\fdefault\6*\17folder_empty\bÔ∞ä\14highlight\20NeoTreeFileIcon\16folder_open\bÓóæ\18folder_closed\bÓóø\vindent\1\0\t\18indent_marker\b‚îÇ\17with_markers\2\16indent_size\3\2\fpadding\3\1\23expander_highlight\20NeoTreeExpander\22expander_expanded\bÔëº\23expander_collapsed\bÔë†\14highlight\24NeoTreeIndentMarker\23last_indent_marker\b‚îî\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\25close_if_last_window\2\26sort_case_insensitive\1\23enable_diagnostics\1\22enable_git_status\1\23popup_border_style\frounded\nsetup\rneo-tree\frequire0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0" },
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\nÔ\5\0\0\4\0#\00046\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0014\0\0\0005\1\a\0005\2\b\0>\2\2\1=\1\6\0005\1\n\0005\2\v\0>\2\2\1=\1\t\0005\1\r\0005\2\14\0>\2\2\1=\1\f\0005\1\16\0005\2\17\0>\2\2\1=\1\15\0005\1\19\0005\2\20\0>\2\2\1=\1\18\0005\1\22\0005\2\23\0>\2\2\1=\1\21\0005\1\25\0005\2\26\0>\2\2\1=\1\24\0005\1\28\0005\2\29\0>\2\2\1=\1\27\0005\1\31\0005\2 \0>\2\2\1=\1\30\0006\1\0\0'\3!\0B\1\2\0029\1\"\1\18\3\0\0B\1\2\1K\0\1\0\17set_mappings\21neoscroll.config\1\2\0\0\b250\1\2\0\0\azb\azb\1\2\0\0\b250\1\2\0\0\azz\azz\1\2\0\0\b250\1\2\0\0\azt\azt\1\4\0\0\t0.10\nfalse\b100\1\2\0\0\vscroll\n<C-e>\1\4\0\0\n-0.10\nfalse\b100\1\2\0\0\vscroll\n<C-y>\1\4\0\0#vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-f>\1\4\0\0$-vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-b>\1\4\0\0\18vim.wo.scroll\ttrue\b100\1\2\0\0\vscroll\n<C-d>\1\4\0\0\19-vim.wo.scroll\ttrue\b100\1\2\0\0\vscroll\n<C-u>\rmappings\1\0\5\22respect_scrolloff\1\16hide_cursor\2\21performance_mode\1\rstop_eof\2\25cursor_scrolls_alone\2\1\n\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\n<C-y>\n<C-e>\azt\azz\azb\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["neovim-session-manager"] = {
    config = { "\27LJ\2\n˘\3\0\0\n\0\20\0 6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\n\0\18\6\0\0009\4\4\0006\a\5\0009\a\6\a9\a\a\a'\t\b\0B\a\2\2'\b\t\0B\4\4\2=\4\v\0036\4\0\0'\6\f\0B\4\2\0029\4\r\0049\4\14\4=\4\15\0034\4\0\0=\4\16\0035\4\17\0=\4\18\0034\4\0\0=\4\19\3B\1\2\1K\0\1\0\29autosave_ignore_buftypes\30autosave_ignore_filetypes\1\2\0\0\14gitcommit\25autosave_ignore_dirs\18autoload_mode\16LastSession\17AutoloadMode\27session_manager.config\17sessions_dir\1\0\6\31autosave_ignore_not_normal\2\26autosave_last_session\2\29autosave_only_in_session\1\19colon_replacer\a++\18path_replacer\a__\20max_path_length\3P\rsessions\tdata\fstdpath\afn\bvim\bnew\nsetup\20session_manager\17plenary.path\frequire\0" },
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["nightfox.nvim"] = {
    config = { "\27LJ\2\nÖ\4\0\0\a\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\b\0006\4\3\0009\4\4\0049\4\5\4'\6\6\0B\4\2\2'\5\a\0&\4\5\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0034\4\0\0=\4\14\3=\3\16\0024\3\0\0=\3\17\0024\3\0\0=\3\18\0024\3\0\0=\3\19\2B\0\2\1K\0\1\0\vgroups\nspecs\rpalettes\foptions\1\0\0\fmodules\finverse\1\0\3\16match_paren\1\vsearch\1\vvisual\1\vstyles\1\0\n\ntypes\tNONE\14variables\tNONE\fstrings\tNONE\14operators\tNONE\fnumbers\tNONE\rkeywords\tNONE\14functions\tNONE\17conditionals\tNONE\14constants\tNONE\rcomments\tNONE\17compile_path\1\0\5\24compile_file_suffix\14_compiled\19module_default\2\17dim_inactive\1\20terminal_colors\2\16transparent\1\14/nightfox\ncache\fstdpath\afn\bvim\nsetup\rnightfox\frequire\0" },
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
    config = { "\27LJ\2\n®\2\0\0\f\0\14\0 6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\15\0\0\0X\4\2Ä\14\0\2\0X\4\1ÄK\0\1\0005\4\4\0004\5\0\0=\5\5\0045\5\6\0=\5\a\0049\5\b\1\18\a\4\0B\5\2\0016\5\1\0'\a\t\0B\5\2\0029\6\n\3\18\b\6\0009\6\v\6'\t\f\0009\n\r\5B\n\1\0A\6\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\nsetup\21disable_filetype\1\3\0\0\20TelescopePrompt\bvim\14fast_wrap\1\0\0\bcmp\19nvim-autopairs\frequire\npcall\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "nvim-autopairs", "cmp-nvim-lsp" },
    config = { "\27LJ\2\nØ\1\0\1\3\0\b\0\0264\1\t\0005\2\0\0>\0\2\2>\2\1\0015\2\1\0>\0\2\2>\2\2\0015\2\2\0>\0\2\2>\2\3\0015\2\3\0>\0\2\2>\2\4\0015\2\4\0>\0\2\2>\2\5\0015\2\5\0>\0\2\2>\2\6\0015\2\6\0>\0\2\2>\2\a\0015\2\a\0>\0\2\2>\2\b\1L\1\2\0\1\2\0\0\b‚îÇ\1\2\0\0\b‚ï∞\1\2\0\0\b‚îÄ\1\2\0\0\b‚ïØ\1\2\0\0\b‚îÇ\1\2\0\0\b‚ïÆ\1\2\0\0\b‚îÄ\1\2\0\0\b‚ï≠0\0\1\4\0\2\0\6\18\3\0\0009\1\0\0B\1\2\2+\2\1\0=\2\1\1L\1\2\0\15scrollable\ninfo_R\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\21select_next_item\fvisibleR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\21select_prev_item\fvisible˚\6\1\0\n\0005\0`6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0XÄ6\2\3\0009\2\4\2'\3\6\0=\3\5\0023\2\a\0006\3\1\0'\5\b\0B\3\2\0029\4\n\3=\4\t\0033\4\v\0=\4\n\0035\4\20\0005\5\15\0005\6\r\0\18\a\2\0'\t\f\0B\a\2\2=\a\14\6=\6\16\0055\6\18\0\18\a\2\0'\t\17\0B\a\2\2=\a\14\6=\6\19\5=\5\21\0045\5\24\0009\6\22\0019\6\23\6B\6\1\2=\6\25\0059\6\22\0019\6\26\6B\6\1\2=\6\27\0059\6\22\0019\6\28\6)\b¸ˇB\6\2\2=\6\29\0059\6\22\0019\6\28\6)\b\4\0B\6\2\2=\6\30\0059\6\22\0019\6\31\6B\6\1\2=\6 \0059\6\22\0019\6!\6B\6\1\2=\6\"\0059\6\22\0019\6#\0065\b&\0009\t$\0019\t%\t=\t'\bB\6\2\2=\6(\0059\6\22\0013\b)\0005\t*\0B\6\3\2=\6+\0059\6\22\0013\b,\0005\t-\0B\6\3\2=\6.\5=\5\22\0044\5\5\0005\6/\0>\6\1\0055\0060\0>\6\2\0055\0061\0>\6\3\0055\0062\0>\6\4\5=\0053\0049\0054\1\18\a\4\0B\5\2\0012\0\0ÄK\0\1\0K\0\1\0\nsetup\fsources\1\0\1\tname\tpath\1\0\1\tname\rnvim_lua\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\vwindow\1\0\0\18documentation\1\0\0\17CmpDocBorder\15completion\1\0\0\vborder\1\0\1\17winhighlight4Normal:CmpPmenu,CursorLine:PmenuSel,Search:None\14CmpBorder\0\tinfo\ninfo_\21cmp.utils.window\0\26menu,menuone,noselect\16completeopt\6o\bvim\bcmp\frequire\npcall\0" },
    loaded = true,
    only_config = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n∫\1\0\0\t\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0016\2\5\0009\2\6\2'\4\a\0009\5\4\0016\6\0\0'\b\b\0B\6\2\0029\6\t\6B\6\1\0A\2\2\2=\2\4\1K\0\1\0\25default_capabilities\17cmp_nvim_lsp\nforce\20tbl_deep_extend\bvim\17capabilities\19default_config\tutil\14lspconfig\frequire\0" },
    load_after = {
      ["mason-lspconfig.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    commands = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSEnable", "TSDisable", "TSModuleInfo" },
    config = { "\27LJ\2\n≈\3\0\0\a\0\21\0\0276\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0005\6\f\0=\6\r\5=\5\14\0045\5\15\0=\5\16\0045\5\17\0=\5\18\0045\5\19\0=\5\20\4B\2\2\1K\0\1\0\vindent\1\0\1\venable\1\26incremental_selection\1\0\1\venable\2\fautotag\1\0\1\venable\2\frainbow\fdisable\1\2\0\0\thtml\1\0\2\venable\2\18extended_mode\1\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\0\1\b\0\0\blua\bvim\bcss\thtml\15javascript\15typescript\truby\nsetup\28nvim-treesitter.configs\frequire\npcall\0" },
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
    config = { "\27LJ\2\na\0\0\b\2\3\0\f6\0\0\0-\2\0\0009\2\1\2B\0\2\4X\3\4Ä-\5\1\0009\5\2\5\18\a\4\0B\5\2\1E\3\3\3R\3˙\127K\0\1\0\2¿\1¿\19load_extension\20extensions_list\vipairs‰\n\1\0\t\0006\0\\6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0TÄ6\2\3\0009\2\4\2+\3\2\0=\3\5\0025\0020\0005\3\a\0005\4\6\0=\4\b\0035\4\n\0005\5\t\0=\5\v\0045\5\f\0=\5\r\4=\4\14\0036\4\1\0'\6\15\0B\4\2\0029\4\16\4=\4\17\0035\4\18\0=\4\19\0036\4\1\0'\6\15\0B\4\2\0029\4\20\4=\4\21\0035\4\22\0=\4\23\0034\4\0\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0036\4\1\0'\6\29\0B\4\2\0029\4\30\0049\4\31\4=\4 \0036\4\1\0'\6\29\0B\4\2\0029\4!\0049\4\31\4=\4\"\0036\4\1\0'\6\29\0B\4\2\0029\4#\0049\4\31\4=\4$\0036\4\1\0'\6\29\0B\4\2\0029\4%\4=\4%\0035\4*\0005\5(\0006\6\1\0'\b&\0B\6\2\0029\6'\6=\6)\5=\5+\0045\5,\0006\6\1\0'\b&\0B\6\2\0029\6'\6=\6-\5=\5.\4=\4/\3=\0031\0025\0032\0=\0033\0029\0034\1\18\5\2\0B\3\2\0016\3\0\0003\0055\0B\3\2\0012\0\0ÄK\0\1\0K\0\1\0\0\nsetup\20extensions_list\1\3\0\0\vthemes\nterms\rdefaults\1\0\0\rmappings\6i\n<ESC>\1\0\0\6n\1\0\0\6q\1\0\0\nclose\22telescope.actions\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚ï≠\b‚ïÆ\b‚ïØ\b‚ï∞\vborder\17path_display\1\2\0\0\rtruncate\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\1\2\0\0\17node_modules\16file_sorter\19get_fuzzy_file\22telescope.sorters\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\3\vheight\4ö≥ÊÃ\tô≥¶ˇ\3\nwidth\4◊«¬Î\3äÆØˇ\3\19preview_cutoff\3x\1\0\3\18preview_width\4ö≥ÊÃ\tô≥Üˇ\3\20prompt_position\btop\18results_width\4ö≥ÊÃ\tô≥¶ˇ\3\22vimgrep_arguments\1\0\t\23selection_strategy\nreset\17initial_mode\vinsert\17entry_prefix\a  \20selection_caret\a  \19color_devicons\2\18prompt_prefix\v ÔÄÇ  \rwinblend\3\0\20layout_strategy\15horizontal\21sorting_strategy\14ascending\1\t\0\0\arg\a-L\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\26theme_switcher_loaded\6g\bvim\14telescope\frequire\npcall\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0€\2\0\2\5\0\19\0%'\2\0\0005\3\3\0009\4\2\1=\4\4\0039\4\5\1=\4\6\3=\3\1\0005\3\b\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\a\0005\3\n\0=\2\4\3=\3\t\0005\3\f\0=\2\4\3=\2\6\3=\3\v\0005\3\14\0=\2\4\3=\2\6\3=\3\r\0005\3\16\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\15\0005\3\18\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\17\0K\0\1\0\1\0\0\26TelescopeResultsTitle\1\0\0\26TelescopePreviewTitle\1\0\0\25TelescopePromptTitle\1\0\0\26TelescopePromptBorder\1\0\0\26TelescopePromptNormal\1\0\0\20TelescopeBorder\afg\ffg_dark\abg\1\0\0\fbg_dark\20TelescopeNormal\f#2d3149«\3\1\0\5\0\21\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0034\4\0\0=\4\t\0034\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0023\3\14\0=\3\15\0023\3\16\0=\3\17\2B\0\2\0016\0\18\0009\0\19\0'\2\20\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd\bvim\18on_highlights\0\14on_colors\0\rsidebars\1\3\0\0\aqf\thelp\vstyles\14variables\14functions\rkeywords\1\0\1\vitalic\2\rcomments\1\0\2\vfloats\tdark\rsidebars\tdark\1\0\1\vitalic\2\1\0\b\20terminal_colors\2\nstyle\nnight\17lualine_bold\1\29hide_inactive_statusline\1\19day_brightness\4≥ÊÃô\3≥ÊÃ˛\3\17dim_inactive\1\16light_style\bday\16transparent\1\nsetup\15tokyonight\frequire\0" },
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-cursorline"] = {
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/vim-cursorline",
    url = "https://github.com/sstallion/vim-cursorline"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/jethroflanagan/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n∫\3\0\0\6\0\23\0\"6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\15\0005\4\14\0=\4\16\0035\4\17\0=\4\18\3=\3\19\0029\3\20\1\18\5\2\0B\3\2\0016\3\1\0'\5\21\0B\3\2\0016\3\1\0'\5\22\0B\3\2\1K\0\1\0\21plugins.mappings\18core.mappings\nsetup\23triggers_blacklist\6v\1\3\0\0\6j\6k\6i\1\0\0\1\3\0\0\6j\6k\vhidden\1\t\0\0\r<silent>\n<cmd>\n<Cmd>\t<CR>\tcall\blua\a^:\a^ \vlayout\1\0\1\fspacing\3\6\vwindow\1\0\1\vborder\tnone\19popup_mappings\1\0\2\14scroll_up\n<c-u>\16scroll_down\n<c-d>\nicons\1\0\0\1\0\3\ngroup\6+\15breadcrumb\a¬ª\14separator\n Ôïì \14which-key\frequire\npcall\0" },
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

-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope.nvim")
time([[Setup for telescope.nvim]], false)
-- Setup for: nvim-treesitter
time([[Setup for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nW\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\20nvim-treesitter\17on_file_open\19core.lazy_load\frequire\0", "setup", "nvim-treesitter")
time([[Setup for nvim-treesitter]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n]\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\26indent-blankline.nvim\17on_file_open\19core.lazy_load\frequire\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
-- Setup for: nvim-lspconfig
time([[Setup for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nV\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\19nvim-lspconfig\17on_file_open\19core.lazy_load\frequire\0", "setup", "nvim-lspconfig")
time([[Setup for nvim-lspconfig]], false)
-- Setup for: which-key.nvim
time([[Setup for which-key.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "which-key.nvim")
time([[Setup for which-key.nvim]], false)
-- Setup for: Comment.nvim
time([[Setup for Comment.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "Comment.nvim")
time([[Setup for Comment.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\nò\16\0\0\a\0002\0A6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0005\3\b\0005\4\a\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0034\4\0\0=\4\18\3=\3\19\0025\3\20\0005\4\21\0=\4\22\0035\4\23\0005\5\24\0005\6\25\0=\6\26\5=\5\27\0045\5\28\0005\6\29\0=\6\26\5=\5\30\4=\4\31\3=\3 \0024\3\0\0=\3!\0025\3)\0005\4\"\0005\5#\0=\5$\0044\5\0\0=\5%\0044\5\0\0=\5&\0044\5\0\0=\5'\0044\5\0\0=\5(\4=\4*\0035\4,\0005\5+\0=\5\31\4=\4 \3=\3-\0025\3.\0005\0040\0005\5/\0=\5\31\4=\4 \3=\0031\2B\0\2\1K\0\1\0\fbuffers\1\0\0\1\0\5\6d\18buffer_delete\6.\rset_root\t<bs>\16navigate_up\6s\16open_vsplit\6S\15open_split\1\0\3\18show_unloaded\2\21group_empty_dirs\2\24follow_current_file\2\15filesystem\1\0\0\1\0\t\6H\18toggle_hidden\a[g\22prev_git_modified\6D\27fuzzy_finder_directory\n<c-x>\17clear_filter\6/\17fuzzy_finder\6.\rset_root\t<bs>\16navigate_up\6f\21filter_on_submit\a]g\22next_git_modified\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_current\21group_empty_dirs\1\24follow_current_file\2\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\6\0\0\14.DS_Store\14thumbs.db\17node_modules\t.git\24packer_compiled.lua\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\1\0\23\6d\vdelete\6t\16open_tabnew\6x\21cut_to_clipboard\6p\25paste_from_clipboard\6c\tcopy\6s\16open_vsplit\6?\14show_help\6z\20close_all_nodes\6q\17close_window\6C\15close_node\6m\tmove\6>\16next_source\6w\28open_with_window_picker\6S\15open_split\6<\16prev_source\n<esc>\19revert_preview\t<cr>\topen\18<2-LeftMouse>\topen\nspace\1\6y\22copy_to_clipboard\6A\18add_directory\6R\frefresh\6r\vrename\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\vsymbol\6*\14highlight\20NeoTreeModified\ticon\1\0\5\fdefault\6*\17folder_empty\bÔ∞ä\14highlight\20NeoTreeFileIcon\16folder_open\bÓóæ\18folder_closed\bÓóø\vindent\1\0\t\18indent_marker\b‚îÇ\17with_markers\2\16indent_size\3\2\fpadding\3\1\23expander_highlight\20NeoTreeExpander\22expander_expanded\bÔëº\23expander_collapsed\bÔë†\14highlight\24NeoTreeIndentMarker\23last_indent_marker\b‚îî\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\25close_if_last_window\2\26sort_case_insensitive\1\23enable_diagnostics\1\22enable_git_status\1\23popup_border_style\frounded\nsetup\rneo-tree\frequire0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\nä\1\0\0\6\1\6\0\0196\0\0\0009\0\1\0009\0\2\0-\2\0\0+\3\2\0+\4\1\0+\5\2\0B\0\5\2\14\0\0\0X\1\1Ä'\0\3\0006\1\0\0009\1\1\0019\1\4\1\18\3\0\0'\4\5\0+\5\1\0B\1\4\1K\0\1\0\3¿\vnormal\18nvim_feedkeys\5\27nvim_replace_termcodes\bapi\bvimß\2\1\3\b\0\16\0\28\18\5\0\0009\3\0\0'\6\1\0'\a\2\0B\3\4\2\18\5\3\0009\3\0\3'\6\3\0'\a\4\0B\3\4\0025\4\5\0=\1\6\4=\0\a\4\15\0\2\0X\5\6Ä5\5\t\0>\3\2\5>\2\3\0055\6\n\0>\6\4\5=\5\b\0045\5\v\0=\1\f\0053\6\r\0=\6\14\5=\4\15\0052\0\0ÄL\5\2\0\topts\ron_press\0\bval\1\0\1\ttype\vbutton\1\0\2\vsilent\2\fnoremap\2\1\2\0\0\6n\vkeymap\rshortcut\ttext\1\0\5\nwidth\3$\rposition\vcenter\ahl\17AlphaButtons\19align_shortcut\nright\vcursor\3\5\r<leader>\bSPC\5\a%s\tgsub0\0\0\2\1\3\0\0056\0\0\0009\0\1\0-\1\0\0=\1\2\0K\0\1\0\0¿\15laststatus\bopt\bvimñ\1\1\0\6\0\t\0\0176\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0005\4\6\0003\5\a\0=\5\b\4B\1\3\0016\1\0\0009\1\1\1)\2\0\0=\2\2\0012\0\0ÄK\0\1\0\rcallback\0\1\0\1\vbuffer\3\0\14BufUnload\24nvim_create_autocmd\bapi\15laststatus\bopt\bvimõ\14\1\0\14\0/\3^6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0VÄ3\2\3\0006\3\4\0009\3\5\3*\4\0\0009\5\6\0035\a\a\0009\b\b\0039\n\t\3)\f\0\0B\n\2\2\"\n\4\nB\b\2\0?\b\1\0B\5\2\0025\6\15\0005\a\n\0005\b\v\0=\b\f\a5\b\r\0=\b\14\a=\a\16\0065\a\17\0004\b\6\0\18\t\2\0'\v\18\0'\f\19\0'\r\20\0B\t\4\2>\t\1\b\18\t\2\0'\v\21\0'\f\22\0'\r\23\0B\t\4\2>\t\2\b\18\t\2\0'\v\24\0'\f\25\0'\r\26\0B\t\4\2>\t\3\b\18\t\2\0'\v\24\0'\f\27\0'\r\28\0B\t\4\2>\t\4\b\18\t\2\0'\v\29\0'\f\30\0'\r\31\0B\t\4\0?\t\2\0=\b\f\a5\b \0=\b\14\a=\a!\0065\a\"\0=\5\f\a=\a#\0065\a$\0=\a%\0069\a&\0015\t'\0004\n\5\0009\v#\6>\v\1\n9\v\16\6>\v\2\n9\v%\6>\v\3\n9\v!\6>\v\4\n=\n(\t4\n\0\0=\n\14\tB\a\2\0016\a\4\0009\a)\a9\a*\a'\t+\0005\n,\0003\v-\0=\v.\nB\a\3\1K\0\1\0K\0\1\0\rcallback\0\1\0\1\fpattern\nalpha\rFileType\24nvim_create_autocmd\bapi\vlayout\1\0\0\nsetup\24headerPaddingBottom\1\0\2\bval\3\2\ttype\fpadding\21headerPaddingTop\1\0\1\ttype\fpadding\fbuttons\1\0\1\fspacing\3\1\25:Telescope marks<CR>\21ÔÄÆ  Bookmarks  \fSPC b m\14:enew<CR>\20ÔÉæ  New File  \29:Telescope live_grep<CR>\21Ôú¨  Find Word  \fSPC f w\28:Telescope oldfiles<CR>\23Ôúô  Recent File  \fSPC f o\30:Telescope find_files<CR>\21ÔÄÇ  Find File  \fSPC f f\1\0\1\ttype\ngroup\vheader\1\0\0\topts\1\0\2\rposition\vcenter\ahl\16AlphaHeader\bval\1\f\0\0J   ‚£¥‚£∂‚£§‚°§‚†¶‚£§‚£Ä‚£§‚†Ü     ‚£à‚£≠‚£ø‚£∂‚£ø‚£¶‚£º‚£Ü          X    ‚†â‚†ª‚¢ø‚£ø‚†ø‚£ø‚£ø‚£∂‚£¶‚†§‚†Ñ‚°†‚¢æ‚£ø‚£ø‚°ø‚†ã‚†â‚†â‚†ª‚£ø‚£ø‚°õ‚£¶       F          ‚†à‚¢ø‚£ø‚£ü‚†¶ ‚£æ‚£ø‚£ø‚£∑    ‚†ª‚†ø‚¢ø‚£ø‚£ß‚£Ñ     N           ‚£∏‚£ø‚£ø‚¢ß ‚¢ª‚†ª‚£ø‚£ø‚£∑‚£Ñ‚£Ä‚†Ñ‚†¢‚£Ä‚°Ä‚†à‚†ô‚†ø‚†Ñ    L          ‚¢†‚£ø‚£ø‚£ø‚†à    ‚£ª‚£ø‚£ø‚£ø‚£ø‚£ø‚£ø‚£ø‚£õ‚£≥‚£§‚£Ä‚£Ä   ^   ‚¢†‚£ß‚£∂‚£•‚°§‚¢Ñ ‚£∏‚£ø‚£ø‚†ò  ‚¢Ä‚£¥‚£ø‚£ø‚°ø‚†õ‚£ø‚£ø‚£ß‚†à‚¢ø‚†ø‚†ü‚†õ‚†ª‚†ø‚†Ñ  X  ‚£∞‚£ø‚£ø‚†õ‚†ª‚£ø‚£ø‚°¶‚¢π‚£ø‚£∑   ‚¢ä‚£ø‚£ø‚°è  ‚¢∏‚£ø‚£ø‚°á ‚¢Ä‚£†‚£Ñ‚£æ‚†Ñ   b ‚£†‚£ø‚†ø‚†õ ‚¢Ä‚£ø‚£ø‚£∑‚†ò‚¢ø‚£ø‚£¶‚°Ä ‚¢∏‚¢ø‚£ø‚£ø‚£Ñ ‚£∏‚£ø‚£ø‚°á‚£™‚£ø‚°ø‚†ø‚£ø‚£∑‚°Ñ  \\ ‚†ô‚†É   ‚£º‚£ø‚°ü  ‚†à‚†ª‚£ø‚£ø‚£¶‚£å‚°á‚†ª‚£ø‚£ø‚£∑‚£ø‚£ø‚£ø ‚£ø‚£ø‚°á ‚†õ‚†ª‚¢∑‚£Ñ P      ‚¢ª‚£ø‚£ø‚£Ñ   ‚†à‚†ª‚£ø‚£ø‚£ø‚£∑‚£ø‚£ø‚£ø‚£ø‚£ø‚°ü ‚†´‚¢ø‚£ø‚°Ü     V       ‚†ª‚£ø‚£ø‚£ø‚£ø‚£∂‚£∂‚£æ‚£ø‚£ø‚£ø‚£ø‚£ø‚£ø‚£ø‚£ø‚°ü‚¢Ä‚£Ä‚£§‚£æ‚°ø‚†É     \1\0\1\ttype\ttext\14winheight\nfloor\1\2\0\0\3\2\bmax\afn\bvim\0\nalpha\frequire\npcallÁÃô≥\6≥ÊÃ˛\3\5ÄÄ¿ô\4\vÄÄ¿ô\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\nÔ\5\0\0\4\0#\00046\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0014\0\0\0005\1\a\0005\2\b\0>\2\2\1=\1\6\0005\1\n\0005\2\v\0>\2\2\1=\1\t\0005\1\r\0005\2\14\0>\2\2\1=\1\f\0005\1\16\0005\2\17\0>\2\2\1=\1\15\0005\1\19\0005\2\20\0>\2\2\1=\1\18\0005\1\22\0005\2\23\0>\2\2\1=\1\21\0005\1\25\0005\2\26\0>\2\2\1=\1\24\0005\1\28\0005\2\29\0>\2\2\1=\1\27\0005\1\31\0005\2 \0>\2\2\1=\1\30\0006\1\0\0'\3!\0B\1\2\0029\1\"\1\18\3\0\0B\1\2\1K\0\1\0\17set_mappings\21neoscroll.config\1\2\0\0\b250\1\2\0\0\azb\azb\1\2\0\0\b250\1\2\0\0\azz\azz\1\2\0\0\b250\1\2\0\0\azt\azt\1\4\0\0\t0.10\nfalse\b100\1\2\0\0\vscroll\n<C-e>\1\4\0\0\n-0.10\nfalse\b100\1\2\0\0\vscroll\n<C-y>\1\4\0\0#vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-f>\1\4\0\0$-vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-b>\1\4\0\0\18vim.wo.scroll\ttrue\b100\1\2\0\0\vscroll\n<C-d>\1\4\0\0\19-vim.wo.scroll\ttrue\b100\1\2\0\0\vscroll\n<C-u>\rmappings\1\0\5\22respect_scrolloff\1\16hide_cursor\2\21performance_mode\1\rstop_eof\2\25cursor_scrolls_alone\2\1\n\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\n<C-y>\n<C-e>\azt\azz\azb\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: neovim-session-manager
time([[Config for neovim-session-manager]], true)
try_loadstring("\27LJ\2\n˘\3\0\0\n\0\20\0 6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\n\0\18\6\0\0009\4\4\0006\a\5\0009\a\6\a9\a\a\a'\t\b\0B\a\2\2'\b\t\0B\4\4\2=\4\v\0036\4\0\0'\6\f\0B\4\2\0029\4\r\0049\4\14\4=\4\15\0034\4\0\0=\4\16\0035\4\17\0=\4\18\0034\4\0\0=\4\19\3B\1\2\1K\0\1\0\29autosave_ignore_buftypes\30autosave_ignore_filetypes\1\2\0\0\14gitcommit\25autosave_ignore_dirs\18autoload_mode\16LastSession\17AutoloadMode\27session_manager.config\17sessions_dir\1\0\6\31autosave_ignore_not_normal\2\26autosave_last_session\2\29autosave_only_in_session\1\19colon_replacer\a++\18path_replacer\a__\20max_path_length\3P\rsessions\tdata\fstdpath\afn\bvim\bnew\nsetup\20session_manager\17plenary.path\frequire\0", "config", "neovim-session-manager")
time([[Config for neovim-session-manager]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\nÖ\4\0\0\a\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\b\0006\4\3\0009\4\4\0049\4\5\4'\6\6\0B\4\2\2'\5\a\0&\4\5\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0034\4\0\0=\4\14\3=\3\16\0024\3\0\0=\3\17\0024\3\0\0=\3\18\0024\3\0\0=\3\19\2B\0\2\1K\0\1\0\vgroups\nspecs\rpalettes\foptions\1\0\0\fmodules\finverse\1\0\3\16match_paren\1\vsearch\1\vvisual\1\vstyles\1\0\n\ntypes\tNONE\14variables\tNONE\fstrings\tNONE\14operators\tNONE\fnumbers\tNONE\rkeywords\tNONE\14functions\tNONE\17conditionals\tNONE\14constants\tNONE\rcomments\tNONE\17compile_path\1\0\5\24compile_file_suffix\14_compiled\19module_default\2\17dim_inactive\1\20terminal_colors\2\16transparent\1\14/nightfox\ncache\fstdpath\afn\bvim\nsetup\rnightfox\frequire\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0€\2\0\2\5\0\19\0%'\2\0\0005\3\3\0009\4\2\1=\4\4\0039\4\5\1=\4\6\3=\3\1\0005\3\b\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\a\0005\3\n\0=\2\4\3=\3\t\0005\3\f\0=\2\4\3=\2\6\3=\3\v\0005\3\14\0=\2\4\3=\2\6\3=\3\r\0005\3\16\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\15\0005\3\18\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\17\0K\0\1\0\1\0\0\26TelescopeResultsTitle\1\0\0\26TelescopePreviewTitle\1\0\0\25TelescopePromptTitle\1\0\0\26TelescopePromptBorder\1\0\0\26TelescopePromptNormal\1\0\0\20TelescopeBorder\afg\ffg_dark\abg\1\0\0\fbg_dark\20TelescopeNormal\f#2d3149«\3\1\0\5\0\21\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0034\4\0\0=\4\t\0034\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0023\3\14\0=\3\15\0023\3\16\0=\3\17\2B\0\2\0016\0\18\0009\0\19\0'\2\20\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd\bvim\18on_highlights\0\14on_colors\0\rsidebars\1\3\0\0\aqf\thelp\vstyles\14variables\14functions\rkeywords\1\0\1\vitalic\2\rcomments\1\0\2\vfloats\tdark\rsidebars\tdark\1\0\1\vitalic\2\1\0\b\20terminal_colors\2\nstyle\nnight\17lualine_bold\1\29hide_inactive_statusline\1\19day_brightness\4≥ÊÃô\3≥ÊÃ˛\3\17dim_inactive\1\16light_style\bday\16transparent\1\nsetup\15tokyonight\frequire\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\1\1\0\0\0\1L\0\2\0\v\0\1\1\0\0\0\1L\0\2\0Ø\t\1\0\6\0001\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\19\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\0035\4\t\0=\4\n\0035\4\f\0005\5\v\0=\5\r\0045\5\14\0=\5\15\4=\4\16\0033\4\17\0=\4\18\3=\3\20\0025\3\21\0005\4\22\0=\4\23\0035\4\25\0005\5\24\0=\5\26\4=\4\27\0035\4\29\0005\5\28\0=\5\30\4=\4\31\0035\4 \0005\5!\0=\5\"\0045\5#\0=\5\b\0045\5$\0=\5\n\4=\4%\0035\4&\0004\5\0\0=\5\b\0045\5'\0=\5\n\0045\5(\0=\5\5\0045\5)\0=\5\a\0045\5*\0=\5+\0045\5,\0=\5\16\0043\5-\0=\5\18\4=\4.\0034\4\0\0=\4/\3=\0030\2B\0\2\1K\0\1\0\vselect\25format_item_override\fbuiltin\0\1\0\3\n<Esc>\nClose\n<C-c>\nClose\t<CR>\fConfirm\15min_height\1\3\0\0\3\n\4ö≥ÊÃ\tô≥¶˛\3\1\3\0\0\3(\4ö≥ÊÃ\tô≥¶˛\3\1\3\0\0\3å\1\4ö≥ÊÃ\tô≥¶ˇ\3\1\0\1\rwinblend\3\n\1\0\4\vborder\frounded\vanchor\aNW\rrelative\veditor\15max_height\4Õô≥Ê\fÃô≥ˇ\3\bnui\1\0\1\rwinblend\3\n\1\0\2\rfiletype\19DressingSelect\rswapfile\1\vborder\1\0\1\nstyle\frounded\1\0\6\rposition\b50%\rrelative\veditor\15min_height\3\n\15max_height\3(\14min_width\3(\14max_width\3P\ffzf_lua\fwinopts\1\0\0\1\0\2\vheight\4ö≥ÊÃ\tô≥Ê˛\3\nwidth\4\0ÄÄÄˇ\3\bfzf\vwindow\1\0\0\1\0\2\vheight\4ö≥ÊÃ\tô≥Ê˛\3\nwidth\4\0ÄÄÄˇ\3\fbackend\1\6\0\0\14telescope\ffzf_lua\bfzf\fbuiltin\bnui\1\0\2\fenabled\2\16trim_prompt\2\ninput\1\0\0\roverride\0\rmappings\6i\1\0\4\t<Up>\16HistoryPrev\n<C-c>\nClose\v<Down>\16HistoryNext\t<CR>\fConfirm\6n\1\0\0\1\0\2\n<Esc>\nClose\t<CR>\fConfirm\16win_options\1\0\2\rwinblend\3\n\twrap\1\16buf_options\14min_width\1\3\0\0\3\20\4ö≥ÊÃ\tô≥¶˛\3\14max_width\1\3\0\0\3å\1\4Õô≥Ê\fÃô≥ˇ\3\1\0\t\vanchor\aSW\20start_in_insert\2\16insert_only\2\rrelative\vcursor\19default_prompt\vInput:\fenabled\2\17prompt_align\tleft\vborder\frounded\17prefer_width\3(\nsetup\rdressing\frequire\0", "config", "dressing.nvim")
time([[Config for dressing.nvim]], false)
-- Config for: mini.nvim
time([[Config for mini.nvim]], true)
try_loadstring("\27LJ\2\nˆ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\rmappings\1\0\t\19update_n_lines\asn\freplace\asr\14find_left\asF\tfind\asf\badd\asa\vdelete\asd\14highlight\ash\16suffix_next\6n\16suffix_last\6l\1\0\3\18search_method\ncover\23highlight_duration\3Ù\3\fn_lines\3\20\nsetup\18mini.surround\frequire\0", "config", "mini.nvim")
time([[Config for mini.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nØ\1\0\1\3\0\b\0\0264\1\t\0005\2\0\0>\0\2\2>\2\1\0015\2\1\0>\0\2\2>\2\2\0015\2\2\0>\0\2\2>\2\3\0015\2\3\0>\0\2\2>\2\4\0015\2\4\0>\0\2\2>\2\5\0015\2\5\0>\0\2\2>\2\6\0015\2\6\0>\0\2\2>\2\a\0015\2\a\0>\0\2\2>\2\b\1L\1\2\0\1\2\0\0\b‚îÇ\1\2\0\0\b‚ï∞\1\2\0\0\b‚îÄ\1\2\0\0\b‚ïØ\1\2\0\0\b‚îÇ\1\2\0\0\b‚ïÆ\1\2\0\0\b‚îÄ\1\2\0\0\b‚ï≠0\0\1\4\0\2\0\6\18\3\0\0009\1\0\0B\1\2\2+\2\1\0=\2\1\1L\1\2\0\15scrollable\ninfo_R\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\21select_next_item\fvisibleR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\21select_prev_item\fvisible˚\6\1\0\n\0005\0`6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0XÄ6\2\3\0009\2\4\2'\3\6\0=\3\5\0023\2\a\0006\3\1\0'\5\b\0B\3\2\0029\4\n\3=\4\t\0033\4\v\0=\4\n\0035\4\20\0005\5\15\0005\6\r\0\18\a\2\0'\t\f\0B\a\2\2=\a\14\6=\6\16\0055\6\18\0\18\a\2\0'\t\17\0B\a\2\2=\a\14\6=\6\19\5=\5\21\0045\5\24\0009\6\22\0019\6\23\6B\6\1\2=\6\25\0059\6\22\0019\6\26\6B\6\1\2=\6\27\0059\6\22\0019\6\28\6)\b¸ˇB\6\2\2=\6\29\0059\6\22\0019\6\28\6)\b\4\0B\6\2\2=\6\30\0059\6\22\0019\6\31\6B\6\1\2=\6 \0059\6\22\0019\6!\6B\6\1\2=\6\"\0059\6\22\0019\6#\0065\b&\0009\t$\0019\t%\t=\t'\bB\6\2\2=\6(\0059\6\22\0013\b)\0005\t*\0B\6\3\2=\6+\0059\6\22\0013\b,\0005\t-\0B\6\3\2=\6.\5=\5\22\0044\5\5\0005\6/\0>\6\1\0055\0060\0>\6\2\0055\0061\0>\6\3\0055\0062\0>\6\4\5=\0053\0049\0054\1\18\a\4\0B\5\2\0012\0\0ÄK\0\1\0K\0\1\0\nsetup\fsources\1\0\1\tname\tpath\1\0\1\tname\rnvim_lua\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\vwindow\1\0\0\18documentation\1\0\0\17CmpDocBorder\15completion\1\0\0\vborder\1\0\1\17winhighlight4Normal:CmpPmenu,CursorLine:PmenuSel,Search:None\14CmpBorder\0\tinfo\ninfo_\21cmp.utils.window\0\26menu,menuone,noselect\16completeopt\6o\bvim\bcmp\frequire\npcall\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\n®\2\0\0\f\0\14\0 6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\15\0\0\0X\4\2Ä\14\0\2\0X\4\1ÄK\0\1\0005\4\4\0004\5\0\0=\5\5\0045\5\6\0=\5\a\0049\5\b\1\18\a\4\0B\5\2\0016\5\1\0'\a\t\0B\5\2\0029\6\n\3\18\b\6\0009\6\v\6'\t\f\0009\n\r\5B\n\1\0A\6\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\nsetup\21disable_filetype\1\3\0\0\20TelescopePrompt\bvim\14fast_wrap\1\0\0\bcmp\19nvim-autopairs\frequire\npcall\0", "config", "nvim-autopairs")

vim.cmd [[ packadd cmp-nvim-lsp ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
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
pcall(vim.api.nvim_create_user_command, 'MasonLog', function(cmdargs)
          require('packer.load')({'mason.nvim'}, { cmd = 'MasonLog', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'mason.nvim'}, { cmd = 'MasonLog' }, _G.packer_plugins)
          return vim.fn.getcompletion('MasonLog ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSBufDisable', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSBufDisable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSBufDisable' }, _G.packer_plugins)
          return vim.fn.getcompletion('TSBufDisable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSEnable', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSEnable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSEnable' }, _G.packer_plugins)
          return vim.fn.getcompletion('TSEnable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSDisable', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSDisable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSDisable' }, _G.packer_plugins)
          return vim.fn.getcompletion('TSDisable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSModuleInfo', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSModuleInfo', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSModuleInfo' }, _G.packer_plugins)
          return vim.fn.getcompletion('TSModuleInfo ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSBufEnable', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSBufEnable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSBufEnable' }, _G.packer_plugins)
          return vim.fn.getcompletion('TSBufEnable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSInstall', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSInstall', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSInstall' }, _G.packer_plugins)
          return vim.fn.getcompletion('TSInstall ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Telescope', function(cmdargs)
          require('packer.load')({'telescope.nvim'}, { cmd = 'Telescope', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'telescope.nvim'}, { cmd = 'Telescope' }, _G.packer_plugins)
          return vim.fn.getcompletion('Telescope ', 'cmdline')
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
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> gb <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> ' <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "'", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> " <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "\"", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader> <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "<lt>leader>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> ` <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "`", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
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
