return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  version = false, -- telescope did only one release, so use HEAD for now
  dependencies = { { "nvim-telescope/telescope-live-grep-args.nvim" } },
  keys = {
    {
      "<leader>fb",
      "<cmd>Telescope buffers show_all_buffers=true<cr>",
      desc =
      "Switch Buffer"
    },
    -- {
    --   "<leader>fg",
    --   "<cmd>Telescope live_grep<cr>",
    --   desc =
    --   "Find in Files (Grep)"
    -- },
    {
      "<leader>f:",
      "<cmd>Telescope command_history<cr>",
      desc =
      "Command History"
    },
    {
      "<leader>ff",
      "<cmd>Telescope find_files<cr>",
      desc =
      "Find Files"
    },
    -- find
    -- { "<leader>fb", "<cmd>Telescope buffers<cr>",                       desc = "Buffers" },
    -- { "<leader>ff",      Util.telescope("files"),                                  desc = "Find Files (root dir)" },
    -- { "<leader>fF",      Util.telescope("files", { cwd = false }),                 desc = "Find Files (cwd)" },
    {
      "<leader>fr",
      "<cmd>Telescope oldfiles<cr>",
      desc =
      "Recent"
    },
    -- git
    -- { "<leader>gc", "<cmd>Telescope git_commits<CR>",                   desc = "commits" },
    -- { "<leader>gs", "<cmd>Telescope git_status<CR>",                    desc = "status" },
    -- search
    -- { "<leader>sa", "<cmd>Telescope autocommands<cr>",                  desc = "Auto Commands" },
    {
      "<leader>fB",
      "<cmd>Telescope current_buffer_fuzzy_find<cr>",
      desc =
      "Find in Buffer"
    },
    -- { "<leader>fh", "<cmd>Telescope command_history<cr>",               desc = "Command History" },
    -- { "<leader>sC", "<cmd>Telescope commands<cr>",                      desc = "Commands" },
    {
      "<leader>fd",
      "<cmd>Telescope diagnostics<cr>",
      desc =
      "Diagnostics"
    },
    -- { "<leader>sg",      Util.telescope("live_grep"),                              desc = "Grep (root dir)" },
    -- { "<leader>sG",      Util.telesqcope("live_grep", { cwd = false }),             desc = "Grep (cwd)" },
    -- { "<leader>sh", "<cmd>Telescope help_tags<cr>",                     desc = "Help Pages" },
    -- { "<leader>sH", "<cmd>Telescope highlights<cr>",                    desc = "Search Highlight Groups" },
    {
      "<leader>kt",
      "<cmd>Telescope keymaps<cr>",
      desc =
      "Telescope Keymaps"
    },
    {
      "<leader>fh",
      "<cmd>Telescope man_pages<cr>",
      desc =
      "Man Pages"
    },
    {
      "<leader>fm",
      "<cmd>Telescope marks<cr>",
      desc =
      "Jump to Mark"
    },
    -- { "<leader>so", "<cmd>Telescope vim_options<cr>",                   desc = "Options" },
    {
      "<leader>fR",
      "<cmd>Telescope resume<cr>",
      desc =
      "Resume"
    },
    {
      "<leader>fg",
      "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>",
      desc =
      "Search word"
    },
    {
      "<leader>fc",
      "<cmd>Telescope colorscheme<cr>",
      desc =
      "ColorScheme"
    },
    -- { "<leader>sW",      Util.telescope("grep_string", { cwd = false }),           desc = "Word (cwd)" },
    -- { "<leader>uC",      Util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
    -- {
    --   "<leader>ss",
    --   Util.telescope("lsp_document_symbols", {
    --     symbols = {
    --       "Class",
    --       "Function",
    --       "Method",
    --       "Constructor",
    --       "Interface",
    --       "Module",
    --       "Struct",
    --       "Trait",
    --       "Field",
    --       "Property",
    --     },
    --   }),
    --   desc = "Goto Symbol",
    -- },
    -- {
    --   "<leader>sS",
    --   Util.telescope("lsp_workspace_symbols", {
    --     symbols = {
    --       "Class",
    --       "Function",
    --       "Method",
    --       "Constructor",
    --       "Interface",
    --       "Module",
    --       "Struct",
    --       "Trait",
    --       "Field",
    --       "Property",
    --     },
    --   }),
    --   desc = "Goto Symbol (Workspace)",
    -- },
  },
  opts = {
    defaults = {
      prompt_prefix = " ",
      selection_caret = " ",
      mappings = {
        i = {
          ["<c-t>"] = function(...)
            return require("trouble.providers.telescope").open_with_trouble(...)
          end,
          ["<a-t>"] = function(...)
            return require("trouble.providers.telescope").open_selected_with_trouble(...)
          end,
          -- ["<a-i>"] = function()
          --   "Telescope find_files" { no_ignore = true })()
          --   require "telescope.builtin".find_files ({ no_ignore = true })
          -- end,
          ["<a-h>"] = function()
            require "telescope.builtin".find_files({ hidden = true })
          end,
          ["<C-Down>"] = function(...)
            return require("telescope.actions").cycle_history_next(...)
          end,
          ["<C-Up>"] = function(...)
            return require("telescope.actions").cycle_history_prev(...)
          end,
          ["<C-f>"] = function(...)
            return require("telescope.actions").preview_scrolling_down(...)
          end,
          ["<C-b>"] = function(...)
            return require("telescope.actions").preview_scrolling_up(...)
          end,
          ["<C-k>"] = function()
            require("telescope-live-grep-args.actions").quote_prompt()
          end,
          ["<C-i>"] = function()
            require("telescope-live-grep-args.actions").quote_prompt({ postfix = " --iglob " })
          end,
        },
        n = {
          -- ["q"] = function(...)
          --   return require("telescope.actions").close(...)
          -- end,
        },
      },
    },
  },
  config = function()
    require("telescope").load_extension("live_grep_args")
  end,
}
