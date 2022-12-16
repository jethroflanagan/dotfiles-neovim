local keymap = require "core.keymap"
keymap("n", {
  ["<leader>l"] = { name = "LSP" },
  ["<leader>lr"] = { vim.lsp.buf.rename, "Rename symbol" },
  ["<leader>la"] = { vim.lsp.buf.code_action, "Code action" },
  ["<leader>ld"] = { vim.lsp.buf.definition, "Goto definition" },
  ["<leader>li"] = { vim.lsp.buf.implementation, "Goto implementation" },
  ["<leader>lI"] = { ":LspInfo<CR>", "LSP Info" },
  ["<leader>lk"] = { vim.lsp.buf.hover, "Symbol information" },
  ["<leader>lK"] = { vim.lsp.buf.signature_help, "Signature" },
  ["<leader>lR"] = { require('telescope.builtin').lsp_references, "Show references" },
})
