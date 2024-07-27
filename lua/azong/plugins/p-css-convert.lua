return {
  "cjodo/convert.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  ft = { "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact" },
  keys = {
    { "<leader>cn", "<cmd>ConvertFindNext<CR>", desc = "Find next convertible unit" },
    { "<leader>cc", "<cmd>ConvertFindCurrent<CR>", desc = "Find convertible unit in current line" },
    -- { "<leader>ca", "<cmd>ConvertAll<CR>", desc = "Convert all of a specified unit" },
  },
  opts = {
    keymaps = {
      focus_next = { "j", "<Down>", "<Tab>" },
      focus_prev = { "k", "<Up>", "<S-Tab>" },
      close = { "<Esc>", "<C-c>", "q" },
      submit = { "<CR>", "<Space>" },
    },
  },
}
