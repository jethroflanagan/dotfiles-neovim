local keymap = require "core.keymap"

local function termcodes(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<C-j>", "<S-v>:m '>+1<CR>gv=gv<Esc>")
vim.keymap.set("n", "<C-k>", "<S-v>:m '<-2<CR>gv=gv<Esc>")
vim.keymap.set("n", "<C-l>", "20zl")
vim.keymap.set("n", "<C-h>", "20zh")

vim.keymap.set("n", "<S-ScrollWheelDown>", "zl")
vim.keymap.set("n", "<S-ScrollWheelUp>", "zh")

keymap("", { ["<Space>"] = { "<Nop>" } })

keymap("i", {
  -- go to  beginning and end
  -- ["<C-b>"] = { "<ESC>^i", "beginning of line" },
  -- ["<C-e>"] = { "<End>", "end of line" },

  ["<C-s>"] = { "<cmd> w <CR>", "Save file" },
  -- navigate within insert mode
  ["<C-h>"] = { "<Left>", "Move left" },
  ["<C-l>"] = { "<Right>", "Move right" },
  ["<C-j>"] = { "<Down>", "Move down" },
  ["<C-k>"] = { "<Up>", "Move up" },
})


keymap("n", {
  ['<leader>R'] = { ':so ~/.config/nvim/init.lua<cr>', "Reload config" },
  ["<leader>q"] = { "<cmd> qa <CR>", "Quit" },
  ["<ESC>"] = {
    function()
      -- require("notify").dismiss()
      vim.cmd.nohlsearch() -- clear highlights
      vim.cmd.echo() -- clear short message
    end,
    "No highlight"
  },
  -- ["<Space>"] = { "<NOP>" },
  ["<S-h>"] = { ":bprev<CR>", "Previous buffer" },
  ["<S-l>"] = { ":bnext<CR>", "Next buffer" },
  -- switch between windows
  ["<C-Left>"] = { "<C-w>h", "Window left" },
  ["<C-Right>"] = { "<C-w>l", "Window right" },
  ["<C-Down>"] = { "<C-w>j", "Window down" },
  ["<C-Up>"] = { "<C-w>k", "Window up" },

  -- ["<C-u>"] = { "<C-u>zz", "Scroll, recenter" },
  -- ["<C-d>"] = { "<C-d>zz", "Scroll, recenter" },
  -- -- scroll
  -- ["<A-k>"] = { "20zl" },
  -- ["<A-j>"] = { "20zh" },

  -- save
  ["<C-s>"] = { "<cmd> w <CR>", "Save file" },
  ["<leader>s"] = { "<cmd> w <CR>", "Save file" },
  -- move
  -- ["<C-j>"] = { "<S-v>:m '>+1<CR>gv=gv<Esc>" },
  -- ["<C-k>"] = { "<S-v>:m '<-2<CR>gv=gv<Esc>" },
  -- Copy all
  ["<leader>y"] = { "<cmd> %y+ <CR>", "Copy whole file" },
  -- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
  -- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
  -- empty mode is same as using <cmd> :map
  -- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour
  -- ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
  -- ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
  -- ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
  -- ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },

  -- new buffer
  ["<leader>fn"] = { "<cmd> enew <CR>", "New buffer" },
})

keymap("t", { ["<C-x>"] = { termcodes "<C-\\><C-N>", "Escape terminal mode" } })

keymap("v", {
  -- ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
  -- ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
  -- ["<C-j>"] = { ":m '>+1<CR>gv=gv" },
  -- ["<C-k>"] = { ":m '<-2<CR>gv=gv" },
  ["y"] = { "<Plug>(YankyYank)" },
})

keymap("x", {
  -- ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
  -- ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
  -- Don't copy the replaced text after pasting in visual mode
  -- https://vim.fandom.com/wiki/Replace_a_word_with_yanked_text#Alternative_mapping_for_paste
  ["p"] = { 'p:let @+=@0<CR>:let @"=@0<CR>', opts = { silent = true } },
  ["y"] = { "<Plug>(YankyYank)" },
})
