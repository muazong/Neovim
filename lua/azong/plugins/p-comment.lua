return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    padding = true,
    sticky = true,
    ignore = nil,
    toggler = {
      ---line-comment toggle keymap
      line = "gcc",
      ---block-comment toggle keymap
      block = "gbc",
    },
    opleader = {
      ---line-comment keymap
      line = "gc",
      ---block-comment keymap
      block = "gb",
    },
    extra = {
      ---add comment on the line above
      above = "gcO",
      ---add comment on the line below
      below = "gco",
      ---add comment at the end of line
      eol = "gca",
    },
    mappings = {
      basic = true,
      extra = true,
    },
    pre_hook = nil,
    post_hook = nil,
  },
}
