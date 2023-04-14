return {
  {
    "catppuccin/nvim", name = "catppuccin",

    config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      show_end_of_buffer = false,
      term_colors = false,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
      no_italic = false,
      no_bold = false,
      styles = {
        comments = {
          "italic"
        },
        conditionals = {
          "italic"
        },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {
        mocha = {
				  rosewater = "#F5E0DC",
				  flamingo = "#F2CDCD",
				  mauve = "#DDB6F2",
				  pink = "#F5C2E7",
				  red = "#F28FAD",
				  maroon = "#E8A2AF",
				  peach = "#F8BD96",
				  yellow = "#FAE3B0",
				  green = "#ABE9B3",
				  blue = "#96CDFB",
				  sky = "#89DCEB",
				  teal = "#B5E8E0",
				  lavender = "#C9CBFF",

				  text = "#D9E0EE",
				  subtext1 = "#BAC2DE",
				  subtext0 = "#A6ADC8",
				  overlay2 = "#C3BAC6",
				  overlay1 = "#988BA2",
				  overlay0 = "#6E6C7E",
				  surface2 = "#6E6C7E",
				  surface1 = "#575268",
				  surface0 = "#302D41",
				
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
      custom_highlights = {},
      integrations = {
        indent_blankline = { enabled = true, colored_indent_levels = false },
        nvimtree = true,
        which_key = true,
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = true,
        mini = false,
      },
    })
    vim.cmd.colorscheme "catppuccin"
    end
  }
}
