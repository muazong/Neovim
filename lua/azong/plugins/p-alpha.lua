return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("n", " 󱦰 New File", "<cmd>ene<CR>"),
      dashboard.button("b", " 󱦰 File Browser", "<cmd>Telescope file_browser<CR>"),
      dashboard.button("f", "󰱼 󱦰 Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("g", " 󱦰 Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("l", "󰒲 󱦰 Lazy", "<cmd>Lazy<CR>"),
      dashboard.button("c", " 󱦰 LeetCode", "<cmd>Leet<CR>"),
      dashboard.button("q", " 󱦰 Quit", "<cmd>qa<CR>"),
    }

    -- Set footer
    dashboard.section.footer.val = { " Nvim v0.11.0-dev" }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
