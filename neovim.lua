return {
	{
		"bjarneo/aether.nvim",
		branch = "v2",
		name = "aether",
		priority = 1000,
		opts = {
			transparent = false,
			colors = {
				-- Background colors
				bg = "#05080a",
				bg_dark = "#05080a",
				bg_highlight = "#5d6970",

				-- Foreground colors
				-- fg: Object properties, builtin types, builtin variables, member access, default text
				fg = "#f6c8ff",
				-- fg_dark: Inactive elements, statusline, secondary text
				fg_dark = "#434549",
				-- comment: Line highlight, gutter elements, disabled states
				comment = "#696C76",

				-- Accent colors
				-- red: Errors, diagnostics, tags, deletions, breakpoints
				red = "#ff9fbc",
				-- orange: Constants, numbers, current line number, git modifications
				orange = "#ffc79b",
				-- yellow: Types, classes, constructors, warnings, numbers, booleans
				yellow = "#fffbbc",
				-- green: Comments, strings, success states, git additions
				green = "#baf7b5",
				-- cyan: Parameters, regex, preprocessor, hints, properties
				cyan = "#4cdab6",
				-- blue: Functions, keywords, directories, links, info diagnostics
				blue = "#b2fff3",
				-- purple: Storage keywords, special keywords, identifiers, namespaces
				purple = "#9ab4f9",
				-- magenta: Function declarations, exception handling, tags
				magenta = "#b572ef",
			},
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")

			-- Enable hot reload
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