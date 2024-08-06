return {
  "akinsho/toggleterm.nvim",
  event = { "VimEnter" },
  config = function()
    vim.keymap.set({ "n", "t" }, "<S-Tab>", '<Cmd>exe v:count1 . "ToggleTerm"<CR>')

    require("toggleterm").setup({
      direction = "float",
      float_opts = {
        border = "rounded",
        title_pos = "center",
        width = 90,
        height = 26,
        winblend = 0,
        zindex = 10,
      },
    })
  end,
}
