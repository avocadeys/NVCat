local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local general = augroup("General Settings", {
  clear = true
})

autocmd("User", {
  pattern = "AlphaReady",
  callback = function()
  vim.opt.cmdheight = 0
  vim.opt.showtabline = 0
  vim.opt.laststatus = 0

  autocmd("BufUnload", {
    pattern = "<buffer>",
    callback = function()
    vim.opt.cmdheight = 1
    vim.opt.showtabline = 2
    vim.opt.laststatus = 3
    end,
  })
  end,
  desc = "Disable Bufferline And Lualine in Alpha",
})