return {
  "phaazon/hop.nvim",
  event = { "BufReadPre", "BufNewFile" },
  keys = { { "ff", "<cmd>HopChar1MW<cr>" } },
  opts = {
    keys = "qwerasdfzxcv",
  },
}
