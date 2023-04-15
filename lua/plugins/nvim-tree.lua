return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      renderer = {
        root_folder_label = false,
        add_trailing = false,
        group_empty = true,
        highlight_git = false,
        full_name = false,
        highlight_opened_files = "none",
        special_files = {
          "Cargo.toml", "Makefile", "README.md", "readme.md", "CMakeLists.txt"
        },
        symlink_destination = true,
        indent_markers = {
          enable = true,
          icons = {
            corner = "└ ",
            edge = "│ ",
            item = "│ ",
            none = "  ",
          },
        },
      },
    }
  }
}