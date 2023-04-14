return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons', opt = true
    },

    opts = {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = "",
        section_separators = {
          left = '', right = ''
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
            'mode', separator = {
              left = '', right = ''
            },
          },
        },
        lualine_b = {
          {
            'branch', icon = '󰘬',
          },
          {
            'diff',
            symbols = {
              added = ' ', modified = ' ', removed = ' '
            },
          }
        },
        lualine_c = {
          'filename'
        },
        lualine_x = {
          'encoding', 'fileformat',
        },
        lualine_y = {
          'diagnostics'
        },
        lualine_z = {
          'progress',
          {
            'location', separator = {
              right = ''
            }, left_padding = 1
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
}
