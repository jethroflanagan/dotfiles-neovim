return function(use)
  use { "numToStr/Comment.nvim",
    module = "Comment",
    keys = { "gc", "gb" },
    config = function()
      local present, nvim_comment = pcall(require, "Comment")

      if not present then
        return
      end

      local options = {}
      nvim_comment.setup(options)
    end,
    setup = function()
      -- require("core.utils").load_mappings "comment"
    end,
  }
end
