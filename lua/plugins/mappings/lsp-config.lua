local keymap = require "core.keymap"
keymap("n", {
  ["<leader>l"] = { name = "LSP" },
  ["<leader>lr"] = { vim.lsp.buf.rename, "Rename symbol" },
  ["<leader>la"] = { vim.lsp.buf.code_action, "Code action" },
  ["<leader>gd"] = { vim.lsp.buf.definition, "Goto definition" },
  ["<leader>gi"] = { vim.lsp.buf.implementation, "Goto implementation" },
  ["<leader>lI"] = { ":LspInfo<CR>", "LSP Info" },
  ["<leader>gk"] = { vim.lsp.buf.hover, "Symbol information" },
  ["<leader>gK"] = { vim.lsp.buf.signature_help, "Signature" },
  ["<leader>gR"] = { require('telescope.builtin').lsp_references, "Show references" },
})
