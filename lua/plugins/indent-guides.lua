return {
  {
    "lukas-reineke/indent-blankline.nvim",
    event = {
      "BufReadPost", "BufNewFile"
    },
    opts = {
      char = "│",
      filetype_exclude = {
        "help", "alpha", "dashboard", "NvimTree", "Trouble", "lazy"
      },
      show_trailing_blankline_indent = false,
      show_current_context = false,
    },
  },

  {
    "echasnovski/mini.indentscope",
    version = false,
    event = {
      "BufReadPre", "BufNewFile"
    },
    opts = {
      symbol = "│",
      options = {
        try_as_border = true
      },
    },
    init = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "help", "alpha", "dashboard", "NvimTree", "Trouble", "lazy", "mason"
      },
      callback = function()
      vim.b.miniindentscope_disable = true
      end,
    })
    end,
    config = function(_, opts)
    require("mini.indentscope").setup(opts)
    end,
  },
}
