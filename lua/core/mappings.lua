local keymap = require "core.keymap"

local function termcodes(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

keymap("i", {
  -- go to  beginning and end
  -- ["<C-b>"] = { "<ESC>^i", "beginning of line" },
  -- ["<C-e>"] = { "<End>", "end of line" },

  -- navigate within insert mode
  ["<C-h>"] = { "<Left>", "Move left" },
  ["<C-l>"] = { "<Right>", "Move right" },
  ["<C-j>"] = { "<Down>", "Move down" },
  ["<C-k>"] = { "<Up>", "Move up" },
})

keymap("n", {
  ["<ESC>"] = { "<cmd> noh <CR>", "No highlight" },

  -- switch between windows
  ["<C-h>"] = { "<C-h>", "Window left" },
  ["<C-l>"] = { "<C-l>", "Window right" },
  ["<C-j>"] = { "<C-j>", "Window down" },
  ["<C-k>"] = { "<C-k>", "Window up" },

  -- save
  ["<C-s>"] = { "<cmd> w <CR>", "Save file" },
  ["<leader>s"] = { "<cmd> w <CR>", "Save file" },

  -- Copy all
  ["<C-c>"] = { "<cmd> %y+ <CR>", "Copy whole file" },


  ["<leader>tt"] = {
    function()
      -- require("base46").toggle_theme()
    end,
    "toggle theme",
  },

  -- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
  -- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
  -- empty mode is same as using <cmd> :map
  -- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour
  ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
  ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
  ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
  ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },

  -- new buffer
  ["<leader>fn"] = { "<cmd> enew <CR>", "new buffer" },
})

keymap("t", { ["<C-x>"] = { termcodes "<C-\\><C-N>", "escape terminal mode" } })

keymap("v", {
  ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
  ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
})

keymap("x", {
  ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
  ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
  -- Don't copy the replaced text after pasting in visual mode
  -- https://vim.fandom.com/wiki/Replace_a_word_with_yanked_text#Alternative_mapping_for_paste
  ["p"] = { 'p:let @+=@0<CR>:let @"=@0<CR>', opts = { silent = true } },
})
