return {
  
  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("plugins.lualine.config")
    end,
  },

  {
    "rcarriga/nvim-notify",
    lazy = true,
	  event = "VeryLazy",
    keys = {
      {
        "<leader>un",
        function()
        require("notify").dismiss({
          silent = true, pending = true
        })
        end,
        desc = "Delete all Notifications",
      },
    },
    opts = {
      render = "compact",
      timeout = 3000,
      max_height = function()
      return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
      return math.floor(vim.o.columns * 0.75)
      end,
    },
  },

  {
    "MunifTanjim/nui.nvim",
    lazy = true
  },

  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },

    config = function()
    require("noice").setup {
      presets = { inc_rename = true }
    }
    end,
  }
}
