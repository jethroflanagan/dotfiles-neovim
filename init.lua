vim.defer_fn(function()
  pcall(require, "impatient")
end, 0)

require "core"
require "plugins"
-- loaded by whichkey
-- require "core.mappings"
-- require "plugins.mappings"
require "core.options"
