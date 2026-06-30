return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		opts = {
			lsp = {
				progress = { enabled = false },
			},
			messages = {
				enabled = true,
			},
		},
	},
	{
		"rcarriga/nvim-notify",
		opts = {
			timeout = 3000,
			background_colour = "#1e1e2e",
		},
	},
}
