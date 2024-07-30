return {
  "echasnovski/mini.animate",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "echasnovski/mini.nvim" },
  opts = {
    cursor = {
      enable = true,
    },
    scroll = {
      enable = false,
    },
    resize = {
      enable = false,
    },
    open = {
      enable = false,
    },
    close = {
      enable = false,
    },
  },
}
