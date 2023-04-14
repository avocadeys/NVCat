return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    cmd = "Mason",
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },

    config = function()
    require("mason").setup({
      ui = {
        border = "rounded", -- set to "none" to remover border
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",

    config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "html",
        "cssls",
        "eslint",
        "tsserver",
        "emmet_ls",
        "jsonls",
        "pyright",
        "yamlls",
        "bashls",
      },
      automatic_installation = true,
    })
    end
  }
}