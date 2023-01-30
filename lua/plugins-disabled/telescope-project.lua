if true then
  return
end

return {
  "nvim-telescope/telescope-project.nvim",
  config = function()
    require("telescope").load_extension("project")
  end,

  keys = {
    {
      "<leader>fp",
      function()
        require("telescope").extensions.project.project({})
      end,
      desc = "Projects",
    },
  },
}
