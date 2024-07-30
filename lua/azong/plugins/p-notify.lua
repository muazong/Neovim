return {
  { -- Notify
    "rcarriga/nvim-notify",
    dependencies = {
      "folke/noice.nvim",
    },
    opts = {
      timeout = 1000,
      fps = 60,
      level = 2,
      render = "wrapped-compact",
      always_check = true,
      top_down = true,
      stages = "fade_in_slide_out",
      time_formats = {
        notification = "%T",
        notification_history = "%FT%T",
      },
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.75)
      end,
    },
  },
  { -- Noice
    "folke/noice.nvim",
    event = "VimEnter",
    opts = {
      views = {
        cmdline_popup = {
          position = {
            row = "20%",
            col = "50%",
          },
          size = {
            width = "60%",
            height = "auto",
          },
        },
        popupmenu = {
          relative = "editor",
          position = {
            row = "45%",
            col = "50%",
          },
          size = {
            width = "60%",
            height = 10,
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
          },
        },
      },
      presets = {
        bottom_search = true,
        long_message_to_split = true,
        inc_rename = true,
        lsp_doc_border = true,
      },
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      cmdline = {
        enabled = true,
        view = "cmdline_popup",
        format = {
          cmdline = { pattern = "^:", icon = "", lang = "vim" },
          search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
          search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
          filter = { pattern = "^:%s*!", icon = "", lang = "bash" },
          lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" },
          help = { pattern = "^:%s*he?l?p?%s+", icon = "󰘥" },
        },
      },
      routes = {
        {
          filter = {
            event = "notify",
            find = "No information available", -- Hover doc message
          },
          opts = { skip = true },
        },
        {
          filter = {
            event = "notify",
            find = "unsupported value.", -- Alternate message
          },
          opts = { skip = true },
        },
        {
          filter = {
            event = "notify",
            find = "completion request failed", -- Codeium message
          },
          opts = { skip = true },
        },
      },
    },
  },
}
