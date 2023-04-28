local M = {}
local fn = vim.fn

M.spaces = function()
  local shiftwidth = vim.api.nvim_buf_get_option(0, "shiftwidth")
  return "Spaces: " .. shiftwidth
end

M.cwd = function()
  local dir_name = " " .. fn.fnamemodify(fn.getcwd(), ":t") .. " "
  return (vim.o.columns > 85 and dir_name) or ""
end 

M.location = function()
  return vim.o.columns > 140 and "Ln %l, Col %c " or ""
end 

M.filetype = function()
  return vim.bo.ft == "" and "{} plain text" or "{} " .. vim.bo.ft .. " "
end

return M