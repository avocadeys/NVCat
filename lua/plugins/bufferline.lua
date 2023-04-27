return {
  {
    'akinsho/bufferline.nvim',
    lazy = true,
    event = {
      "BufReadPost", "BufAdd", "BufNewFile"
    },
    version = "v3.*",
    dependencies = 'nvim-tree/nvim-web-devicons',

    config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup {
      options = {
        indicator = {
          icon = " "
        },
        separator_style = {
          "", ""
        },
        always_show_bufferline = true,
        sort_by = "insert_at_end",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = false -- use a "true" to enable the def
          }
        },
      },
      highlights = {
        buffer_selected = {
          italic = false, bold = false
        },
        fill = {
          bg = "#1E1E2E",
        },
      },
    }
    end
  }
}
