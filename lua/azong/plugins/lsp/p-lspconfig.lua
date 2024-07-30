return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local capabilities = cmp_nvim_lsp.default_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    local mason_lspconfig = require("mason-lspconfig")

    local mySigns = {
      [vim.diagnostic.severity.ERROR] = "ErrorMsg",
      [vim.diagnostic.severity.WARN] = "WarningMsg",
      [vim.diagnostic.severity.INFO] = "InfoMsg",
      [vim.diagnostic.severity.HINT] = "HintMsg",
    }

    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "",
          [vim.diagnostic.severity.WARN] = "",
          [vim.diagnostic.severity.INFO] = "",
          [vim.diagnostic.severity.HINT] = "󱩎",
        },
        texthl = mySigns,
        linehl = mySigns,
        numhl = mySigns,
      },
      virtual_text = {
        prefix = "󰄛", -- 󰄛 | 󰩃 | ● | 󰝤
        spacing = 4,
      },
      underline = true,
      update_in_insert = true,
      severtity_sort = true,
    })

    local map = vim.keymap.set
    ---@diagnostic disable-next-line: unused-local
    local on_attach = function(client, bufnr)
      local opts = { noremap = true, silent = true, buffer = bufnr }
      map("n", "gf", "<cmd>Lspsaga finder<CR>", opts) -- show definition, references
      map("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
      map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
      map("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
      map("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
      map("n", "gp", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
      map("n", "gn", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
      map("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
      map("n", "<leader>o", "<cmd>Lspsaga outline<CR>", opts) -- see outline on right hand side
    end

    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
          on_attach = on_attach,
        })
      end,

      ["clangd"] = function()
        lspconfig["clangd"].setup({
          capabilities = capabilities,
          on_attach = on_attach,
          offset_encoding = "utf-8",
          sync_kind = 2,
          filetypes = { "cpp", "c" },
        })
      end,

      ["lua_ls"] = function()
        lspconfig["lua_ls"].setup({
          capabilities = capabilities,
          on_attach = on_attach,
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
              workspace = {
                library = {
                  [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                  [vim.fn.stdpath("config") .. "/lua"] = true,
                },
              },
            },
          },
          filetypes = { "lua" },
        })
      end,

      ["emmet_ls"] = function()
        lspconfig["emmet_language_server"].setup({
          capabilities = capabilities,
          on_attach = on_attach,
          filetypes = {
            "html",
            "typescriptreact",
            "javascriptreact",
            "css",
            "sass",
            "scss",
            "less",
            "svelte",
          },
        })
      end,

      ["jsonls"] = function()
        lspconfig["jsonls"].setup({
          capabilities = capabilities,
          on_attach = on_attach,
          filetypes = { "json" },
        })
      end,
    })
  end,
}
