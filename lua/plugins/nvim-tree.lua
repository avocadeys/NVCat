return {
  {
    "nvim-tree/nvim-tree.lua",
    lazy = true,
    cmd = {
      "NvimTreeToggle",
      "NvimTreeOpen",
      "NvimTreeFindFile",
      "NvimTreeFindFileToggle",
      "NvimTreeRefresh",
    },
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      renderer = {
        root_folder_label = false,
        indent_markers = {
          enable = true,
          inline_arrows = true,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            bottom = "─",
            none = " ",
          },
        },
        icons = {
          git_placement = "after",
          glyphs = {
            git = {
              unstaged = "U",
              staged = "S",
              unmerged = "",
              renamed = "R",
              untracked = "?",
              deleted = "D",
              ignored = "◌",
            },
          },
        }
      },
    }
  }
}
