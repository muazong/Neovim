return {
  "echasnovski/mini.indentscope",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "echasnovski/mini.nvim",
    {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
      opts = {
        indent = { char = "┊" },
      },
    },
  },
  opts = { symbol = "│" },
}
