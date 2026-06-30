return {
	{
		"nvim-lualine/lualine.nvim",
		opts = function(_, opts)
			opts.options = opts.options or {}
			opts.options.theme = "auto"
			opts.options.globalstatus = true
			opts.options.component_separators = { left = "|", right = "|" }
			opts.options.section_separators = { left = "", right = "" }
			-- only override filename to show relative path
			opts.sections = opts.sections or {}
			opts.sections.lualine_c = { { "filename", path = 1 } }
			return opts
		end,
	},
}
