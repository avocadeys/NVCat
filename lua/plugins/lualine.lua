return {
  {
    'nvim-lualine/lualine.nvim',
    lazy = true,
    event = {
      "BufReadPost", "BufAdd", "BufNewFile"
    },
    dependencies = {
      {
        'nvim-tree/nvim-web-devicons', opt = true
      },
      'avocadeys/nvim-lualine-components',
    },

    opts = {
      options = {
        icons_enabled = true,
        theme = 'catppuccin',
        component_separators = "",
        section_separators = {
          left = '', right = ''
        },
        disabled_filetypes = {
          statusline = {
            'alpha'
          },
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = {
          {
            'mode',
            fmt = function()
              return "󰀘"
            end,
          },
        },
        lualine_b = {
          {
            'branch', icon = '',
          }
        },
        lualine_c = {
          {
            'diff',
            symbols = {
              added = ' ', modified = ' ', removed = ' '
            }
          },
          {
            'diagnostics',
            update_in_insert = true,
          },
        },
        lualine_x = {
          'encoding', 'lsp_servers'
        },
        lualine_y = {},
        lualine_z = {
          'progress', 'location'
        },
      }
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {
        'filename'
      },
      lualine_x = {
        'location'
      },
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {
      "nvim-tree"
    }
  }
}
