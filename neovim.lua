return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg         = "#05080a",
        dark_bg    = "#040608",
        darker_bg  = "#030405",
        lighter_bg = "#1e2123",

        fg         = "#dce2f7",
        dark_fg    = "#a5aab9",
        light_fg   = "#e1e6f8",
        bright_fg  = "#e5e9f9",
        muted      = "#141f27",

        red        = "#ffd4e9",
        yellow     = "#fbebc8",
        orange     = "#ffdaec",
        green      = "#f7ddff",
        cyan       = "#c5edc1",
        blue       = "#c9fff7",
        purple     = "#dcc3f9",
        brown      = "#99838e",

        bright_red    = "#ffd4e9",
        bright_yellow = "#fbebc8",
        bright_green  = "#f7ddff",
        bright_cyan   = "#c5edc1",
        bright_blue   = "#c9fff7",
        bright_purple = "#dcc3f9",

        accent               = "#c9fff7",
        cursor               = "#dce2f7",
        foreground           = "#dce2f7",
        background           = "#05080a",
        selection             = "#1e2123",
        selection_foreground = "#dce2f7",
        selection_background = "#1e2123",
      },
    },
    -- set up hot reload
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
