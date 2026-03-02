return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd(vim.cmd([[colorscheme catppuccin-frappe]]))
		end,
	},
}
