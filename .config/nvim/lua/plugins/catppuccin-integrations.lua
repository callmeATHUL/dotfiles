return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		optional = true,
		opts = {
			integrations = {
				cmp = true,
				gitsigns = true,
				neo_tree = true,
				treesitter = true,
				which_key = true,
				mason = true,
				lazy = true,
				lualine = true,
				noice = true,
				notify = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
				indent_blankline = { enabled = true },
			},
		},
	},
}
