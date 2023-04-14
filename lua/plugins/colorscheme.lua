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
        comments = {},
			  properties = { "italic" },
			  functions = { "bold" },
			  keywords = { "italic" },
			  operators = { "bold" },
			  conditionals = { "bold" },
			  loops = { "bold" },
			  booleans = { "bold", "italic" },
			  numbers = {},
			  types = {},
			  strings = {},
			  variables = {},
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
      highlight_overrides = {
			mocha = function(cp)
				return {
					-- For base configs.
					NormalFloat = { fg = cp.text, bg = transparent_background and cp.none or cp.base },
					CursorLineNr = { fg = cp.green },
					Search = { bg = cp.surface1, fg = cp.pink, style = { "bold" } },
					IncSearch = { bg = cp.pink, fg = cp.surface1 },
					Keyword = { fg = cp.pink },
					Type = { fg = cp.blue },
					Typedef = { fg = cp.yellow },
					StorageClass = { fg = cp.red, style = { "italic" } },

					-- For native lsp configs.
					DiagnosticVirtualTextError = { bg = cp.none },
					DiagnosticVirtualTextWarn = { bg = cp.none },
					DiagnosticVirtualTextInfo = { bg = cp.none },
					DiagnosticVirtualTextHint = { fg = cp.rosewater, bg = cp.none },

					DiagnosticHint = { fg = cp.rosewater },
					LspDiagnosticsDefaultHint = { fg = cp.rosewater },
					LspDiagnosticsHint = { fg = cp.rosewater },
					LspDiagnosticsVirtualTextHint = { fg = cp.rosewater },
					LspDiagnosticsUnderlineHint = { sp = cp.rosewater },

					-- For trouble.nvim
					TroubleNormal = { bg = cp.base },

					-- For treesitter.
					["@field"] = { fg = cp.rosewater },
					["@property"] = { fg = cp.yellow },
					["@include"] = { fg = cp.teal },
					["@keyword.operator"] = { fg = cp.sky },
					["@punctuation.special"] = { fg = cp.maroon },
					["@constructor"] = { fg = cp.lavender },
					["@exception"] = { fg = cp.peach },
					["@constant.builtin"] = { fg = cp.lavender },
					["@type.qualifier"] = { link = "@keyword" },
					["@variable.builtin"] = { fg = cp.red, style = { "italic" } },
					["@function.macro"] = { fg = cp.red, style = {} },
					["@parameter"] = { fg = cp.rosewater },
					["@keyword"] = { fg = cp.red, style = { "italic" } },
					["@keyword.function"] = { fg = cp.maroon },
					["@keyword.return"] = { fg = cp.pink, style = {} },
					["@method"] = { fg = cp.blue, style = { "italic" } },
					["@namespace"] = { fg = cp.rosewater, style = {} },
					["@punctuation.delimiter"] = { fg = cp.teal },
					["@punctuation.bracket"] = { fg = cp.overlay2 },
					["@type"] = { fg = cp.yellow },
					["@variable"] = { fg = cp.text },
					["@tag.attribute"] = { fg = cp.mauve, style = { "italic" } },
					["@tag"] = { fg = cp.peach },
					["@tag.delimiter"] = { fg = cp.maroon },
					["@text"] = { fg = cp.text },
					["@function.builtin.bash"] = { fg = cp.red, style = { "italic" } },
					["@parameter.bash"] = { fg = cp.yellow, style = { "italic" } },
					["@field.lua"] = { fg = cp.lavender },
					["@constructor.lua"] = { fg = cp.flamingo },
					["@variable.builtin.lua"] = { fg = cp.flamingo, style = { "italic" } },
					["@constant.java"] = { fg = cp.teal },
					["@property.typescript"] = { fg = cp.lavender, style = { "italic" } },
					["@type.css"] = { fg = cp.lavender },
					["@property.css"] = { fg = cp.yellow, style = { "italic" } },
					["@type.builtin.c"] = { fg = cp.yellow, style = {} },
					["@property.cpp"] = { fg = cp.text },
					["@type.builtin.cpp"] = { fg = cp.yellow, style = {} },
				}
			end,
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
