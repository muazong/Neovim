return {
  "akinsho/toggleterm.nvim",
  event = { "VimEnter" },
  config = function()
    vim.cmd([[ 
      autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><S-Tab> <Cmd>exe v:count1 . "ToggleTerm"<CR>
    ]])
    vim.keymap.set("n", "<S-Tab>", '<Cmd>exe v:count1 . "ToggleTerm"<CR>')
    vim.keymap.set("i", "<S-Tab>", '<ESC><Cmd>exe v:count1 . "ToggleTerm"<CR>')

    require("toggleterm").setup({
      direction = "float",
      float_opts = {
        border = "rounded",
        title_pos = "center",
        width = 90,
        height = 26,
        winblend = 0,
        zindex = 100,
      },
    })
  end,
}
