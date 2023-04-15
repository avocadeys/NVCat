return {
  {
    'akinsho/bufferline.nvim',
    lazy = true,
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    version = "v3.*",
    dependencies = 'nvim-tree/nvim-web-devicons',

    config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup {
      options = {
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = false -- use a "true" to enable the def
          }
        },
      }
    }
    end
  }
}