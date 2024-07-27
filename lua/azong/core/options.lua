local opts = vim.opt

-- File type
opts.filetype = 'on'

-- Shell
opts.shell = 'zsh'

-- Clipboard option
opts.clipboard:append("unnamedplus")

-- Line options
opts.number = true
opts.cursorline = true
opts.breakindent = true
opts.linebreak = true
opts.wrap = false

-- Sign column
opts.textwidth = 80
opts.colorcolumn = "0"
opts.signcolumn = "yes"

-- Confirm to save
opts.confirm = true

-- Undo setup
opts.undofile = true

-- Disable swap file
opts.swapfile = false

-- Disable backup
opts.backup = false
opts.writebackup = false

-- Encoding of Unicode
opts.encoding = "utf-8"
opts.fileencoding = "utf-8"
-- vim.scriptencoding = "utf-8"

-- Color options
opts.termguicolors = true
opts.background = "dark"

-- Allow cursor to move where there is no text in visual block mode
opts.virtualedit = "block"

-- Split buffer when replace word
opts.inccommand = "split"

-- History size
opts.history = 30

-- Time set
opts.updatetime = 50
opts.timeoutlen = 800

-- Tab & indent
opts.tabstop = 2
opts.smarttab = true
opts.smartindent = true
opts.shiftwidth = 2
opts.numberwidth = 2
opts.expandtab = true
opts.shiftround = true
opts.copyindent = true

-- Backspace
opts.backspace = "indent,eol,start"

-- Keywords
opts.iskeyword:append({ "_" })

-- Scroll options
opts.scrolloff = 8
opts.sidescrolloff = 8

-- Auto setup
opts.autoread = true
opts.autowrite = true
opts.autoindent = true

-- Fold options
opts.foldenable = false
opts.foldmethod = "indent"
opts.foldlevel = 99
opts.foldlevelstart = 99
opts.foldcolumn = "0"

-- Complete options
opts.completeopt = "menuone,noinsert,noselect"

-- Search options
opts.ignorecase = true
opts.infercase = true
opts.smartcase = true
opts.hlsearch = true

-- Split window options
opts.splitright = true
opts.splitbelow = true

-- Fill chars
opts.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}

-- Explorer
vim.g.netrw_liststyle = 3

-- Disable options
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
