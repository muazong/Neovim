return {
  "williamboman/mason.nvim",
  build = ":MasonUpdate",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "jayp0521/mason-null-ls.nvim",
  },
  config = function()
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })
    require("mason-lspconfig").setup({
      ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "lua_ls",
        "emmet_language_server",
        "typos_lsp",
        "clangd",
        -- "pyright",
        "markdown_oxide",
        "jsonls",
        "somesass_ls",
        "css_variables",
      },
    })
    require("mason-null-ls").setup({
      ensure_installed = {
        -- "prettier",
        "prettierd",
        "stylua",
        "clang_format",
        "shfmt",
        -- "black",
        -- "isort",
      },
    })
  end,
}
