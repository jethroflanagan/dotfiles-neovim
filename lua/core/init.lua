-- add binaries installed by mason.nvim to path
local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
vim.env.PATH = vim.env.PATH .. (is_windows and ";" or ":") .. vim.fn.stdpath "data" .. "/mason/bin"

-- autocmds
-- local autocmd = vim.api.nvim_create_autocmd

-- -- dont list quickfix buffers
-- autocmd("FileType", {
--   pattern = "qf",
--   callback = function()
--     vim.opt_local.buflisted = false
--   end,
-- })
