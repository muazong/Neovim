return {
  "potamides/pantran.nvim",
  config = function()
    require("pantran").setup({
      default_engine = "argos",
      engines = {
        yandex = {
          default_source = "auto",
          default_target = "en",
        },
      },
      controls = {
        mappings = {
          edit = {
            n = {
              ["j"] = "gj",
              ["k"] = "gk",
            },
            i = {
              ["<C-y>"] = false,
              ["<S-l>"] = require("pantran.ui.actions").yank_close_translation,
            },
          },
          select = {
            n = {},
          },
        },
      },
    })
  end,
}
