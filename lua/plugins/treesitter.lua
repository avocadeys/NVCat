return {
  "nvim-treesitter/nvim-treesitter",
  module = true,
  event = {
    "BufReadPost", "BufNewFile"
  },
  dependencies = { "mrjones2014/nvim-ts-rainbow" },
  cmd = {
    "TSInstall",
    "TSInstallInfo",
    "TSUpdate",
    "TSBufEnable",
    "TSBufDisable",
    "TSEnable",
    "TSDisable",
    "TSModuleInfo",
  },
  build = ":TSUpdate",

  config = function()
  local configs = require "nvim-treesitter.configs"

  configs.setup {
    ensure_installed = {
      'html',
      'css',
      'javascript',
      'python',
      'bash',
      'lua',
      'json',
    },
    highlight = {
      enable = true, -- false will disable the whole extension
      disable = "", -- list of language that will be disabled
    },
    autopairs = {
      enable = true,
    },
    indent = {
      enable = false,
      disable = {}
    },
    rainbow = {
    enable = true,
    disable = {}, -- list of languages you want to disable the plugin for
    extended_mode = true, -- also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil,
    },
  }
  end
}