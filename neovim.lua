return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        bg         = "#05080a",
        dark_bg    = "#05080a",
        darker_bg  = "#0A0D0F",
        lighter_bg = "#28213A",

        fg         = "#f3ceff",
        dark_fg    = "#ffe1e1",
        light_fg   = "#ffecff",
        bright_fg  = "#fff6ff",
        muted      = "#9094A2",

        red        = "#ff9fbc",
        orange     = "#ffc79b",
        yellow     = "#fff6c3",
        green      = "#baf7b5",
        cyan       = "#b2fff3",
        blue       = "#9ab4f9",
        purple     = "#dfbaff",
        brown      = "#b572ef",

        bright_red    = "#ffaecb",
        bright_yellow = "#fff6c3",
        bright_green  = "#baf7b5",
        bright_cyan   = "#b2fff3",
        bright_blue   = "#9ab4f9",
        bright_purple = "#dfbaff",

        accent               = "#b2fff3",
        cursor               = "#b2fff3",
        foreground           = "#fff6ff",
        background           = "#05080a",
        selection             = "#28213A",
        selection_foreground = "#05080a",
        selection_background = "#ffc2df",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = c.lighter_bg }
        hl.CursorLineNr = { fg = c.yellow, bold = true }
        hl.Visual = { bg = c.selection_background, fg = c.selection_foreground }
        hl.LspReferenceText = { bg = c.selection, fg = c.bright_fg }
        hl.LspReferenceRead = hl.LspReferenceText
        hl.LspReferenceWrite = hl.LspReferenceText
        hl.SnacksPickerDir         = { fg = c.muted }
        hl.SnacksPickerPathHidden  = { fg = c.muted }
        hl.SnacksPickerPathIgnored = { fg = c.muted }
        hl.SnacksPickerListCursorLine = { bg = c.lighter_bg }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
