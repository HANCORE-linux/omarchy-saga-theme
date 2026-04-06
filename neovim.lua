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
				fg = "#dce2f7",
				-- fg_dark: Inactive elements, statusline, secondary text
				fg_dark = "#434549",
				-- comment: Line highlight, gutter elements, disabled states
				comment = "#6E6A64",

				-- Accent colors
				-- red: Errors, diagnostics, tags, deletions, breakpoints
				red = "#ffd4e9",
				-- orange: Constants, numbers, current line number, git modifications
				orange = "#fbcbae",
				-- yellow: Types, classes, constructors, warnings, numbers, booleans
				yellow = "#fbebc8",
				-- green: Comments, strings, success states, git additions
				green = "#f7ddff",
				-- cyan: Parameters, regex, preprocessor, hints, properties
				cyan = "#c5edc1",
				-- blue: Functions, keywords, directories, links, info diagnostics
				blue = "#c9fff7",
				-- purple: Storage keywords, special keywords, identifiers, namespaces
				purple = "#f8eae7",
				-- magenta: Function declarations, exception handling, tags
				magenta = "#dcc3f9",
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