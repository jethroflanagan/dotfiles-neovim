if true then return end
return {
  "SmiteshP/nvim-navic",
  lazy = true,
  opts = function()
    return {
      separator = " ",
      highlight = true,
      depth_limit = 5,
      -- icons = require("lazyvim.config").icons.kinds,
    }
  end,
}
