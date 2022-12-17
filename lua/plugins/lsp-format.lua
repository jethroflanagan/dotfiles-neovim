
return function(use)
use {"lukas-reineke/lsp-format.nvim",
after = {"nvim-lspconfig"},
config = function()
require("lsp-format").setup {}
require("lspconfig").sumneko_lua.setup { on_attach = require("lsp-format").on_attach }
end}
end
