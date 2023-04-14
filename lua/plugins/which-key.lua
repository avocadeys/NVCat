return {
  {
    "folke/which-key.nvim",
    config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
      plugins = {
        marks = true,
        registers = true,
        spelling = {
          enabled = true,
          suggestions = 20,
        },
        presets = {
          operators = true,
          motions = true,
          text_objects = true,
          windows = true,
          nav = true, --
          z = true,
          g = true,
        },
      },
      operators = {
        gc = "Comments"
      },
      key_labels = {},
      motions = {
        count = true,
      },
      icons = {
        breadcrumb = "»",
        separator = "➜",
        group = "+",
      },
      popup_mappings = {
        scroll_down = "<c-d>",
        scroll_up = "<c-u>",
      },
      window = {
        border = "rounded", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = {
          1, 0, 1, 0
        }, -- extra window margin [top, right, bottom, left]
        padding = {
          1, 2, 1, 2
        }, -- extra window padding [top, right, bottom, left]
        winblend = 0, -- value between 0-100 0 for fully opaque and 100 for fully transparent
      },
      layout = {
        height = {
          min = 4, max = 25
        }, -- min and max height of the columns
        width = {
          min = 20, max = 50
        }, -- min and max width of the columns
        spacing = 3, -- spacing between columns
        align = "center", -- align columns left, center or right
      },
      ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
      hidden = {
        "<silent>", "<cmd>", "<Cmd>", "<CR>", "^:", "^ ", "^call ", "^lua "
      },
      show_help = true,
      show_keys = true,
      triggers = "auto",
      triggers_nowait = {
        "`",
        "'",
        "g`",
        "g'",
        '"',
        "<c-r>",
        "z=",
      },
      triggers_blacklist = {
        i = {
          "j", "k"
        },
        v = {
          "j", "k"
        },
      },
      disable = {
        buftypes = {},
        filetypes = {},
      },
    }
    end,
  },
}