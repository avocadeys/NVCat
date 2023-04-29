local M = {}
local fn = vim.fn

M.spaces = function()
  local shiftwidth = vim.api.nvim_buf_get_option(0, "shiftwidth")
  return vim.o.columns > 140 and "Spaces: " .. shiftwidth .. " " or ""
end

M.cwd = function()
  local dir_name = " " .. fn.fnamemodify(fn.getcwd(), ":t") .. " "
  return (vim.o.columns > 85 and dir_name) or ""
end 

M.location = function()
  return vim.o.columns > 140 and "Ln %l, Col %c " or "%l:%c"
end 

M.filetype = function()
  return vim.bo.ft == "" and "{} plain text" or "{} " .. vim.bo.ft .. " "
end

M.lsp = function()
  local result = " "
  
  if rawget(vim, "lsp") then
    for _, client in ipairs(vim.lsp.get_active_clients()) do
      if client.attached_buffers[vim.api.nvim_get_current_buf()] and client.name ~= "null-ls" then
        return (vim.o.columns > 100 and " " .. client.name .. " ") or " LSP"
      end
    end 
  end 
  
  return result
end

return M