return function(use)

  local present, devicons = pcall(require, "nvim-web-devicons")

  if present then
    -- TODO:
    devicons.setup({
color_icons=true,
default=true,
    })
  end
end
