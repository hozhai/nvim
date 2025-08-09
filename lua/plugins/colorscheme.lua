return {
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000,
		config = function()
			require("everforest").setup({
				transparent_background_level = 1,
				inlay_hints_background = "dimmed",
				background = "medium",
			})
			vim.cmd.colorscheme("everforest")
		end,
	},
}
