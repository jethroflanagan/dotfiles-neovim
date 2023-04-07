return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  deactivate = function()
    vim.cmd([[Neotree close]])
  end,
  init = function()
    vim.g.neo_tree_remove_legacy_commands = 1
    if vim.fn.argc() == 1 then
      local stat = vim.loop.fs_stat(vim.fn.argv(0))
      if stat and stat.type == "directory" then
        require("neo-tree")
      end
    end
  end,
  keys = {
    { '<leader>e', "<cmd>Neotree toggle reveal<cr>",       { desc = "Neotree toggle" } },
    { '<leader>E', "<cmd>Neotree reveal<cr>",              { desc = "Neotree focus" } },
    { '<leader>B', "<cmd>Neotree buffer reveal right<cr>", { desc = "Neotree buffer reveal" } },
  },
  config = function()
    require("neo-tree").setup({
      -- enable_git_status = false,
      filesystem = {
        bind_to_cwd = false,
        follow_current_file = true,
      },
      window = {
        mappings = {
          ["<space>"] = "none",
        },
      },
      default_component_configs = {
        indent = {
          with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
          expander_collapsed = "",
          expander_expanded = "",
          expander_highlight = "NeoTreeExpander",
        },
        git_status = {
          symbols = {
            -- Change type
            added = "",    -- or "✚", but this is redundant info if you use git_status_colors on the name
            modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
            deleted = "",  -- this can only be used in the git_status source
            renamed = "",  -- this can only be used in the git_status source
            -- Status type
            untracked = "",
            ignored = "",
            unstaged = "",
            staged = "",
            conflict = "",
          },
        },
      },
    })
  end,
}
