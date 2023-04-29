local lualine = require("lualine")
local components = require("plugins.lualine.components")

lualine.setup {
  options = {
    component_separators = {
      left = "", rigth = ""
    },
    section_separators = {
      left = "", right = ""
    },
  },
  sections = {
    lualine_a = {
      {
        "mode", fmt = function() return "󰀘" end,
      }
    },
    lualine_b = {},
    lualine_c = {
      {
        "branch", icon = " ",
      },
      {
        "diff",
        symbols = {
          added = ' ', modified = ' ', removed = ' '
        },
      },
      {
        "diagnostics",
        update_in_insert = true,
      },
      components.lsp,
    },
    lualine_x = {
      components.location, components.spaces, "encoding", components.filetype,
    },
    lualine_y = {},
    lualine_z = {
      { "progress", icon = "" },
    },
  },
  extensions = {
    "nvim-tree",
  },
}
