-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- Move lines up and down
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<C-j>", "<S-v>:m '>+1<CR>gv=gv<Esc>")
vim.keymap.set("n", "<C-k>", "<S-v>:m '<-2<CR>gv=gv<Esc>")
