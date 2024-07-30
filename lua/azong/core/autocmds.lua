-- Diagnostic signs
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

-- Under curl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Disable auto comment
vim.cmd([[
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]])

-- Rebember folds
vim.cmd([[ 
  augroup remember_folds
    autocmd!
    autocmd BufWinLeave *.* if &ft !=# 'help' | mkview | endif
    autocmd BufWinEnter *.* if &ft !=# 'help' | silent! loadview | endif
  augroup END
]])

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 200,
    })
  end,
})

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})
