return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local actions = require("telescope.actions")
			require("telescope").setup({
				defaults = {
					file_ignore_pattern = {
						"node_modules",
						"target",
						"debug",
					},
					mappings = {
						i = {
							["C-k"] = actions.move_selection_previous,
							["C-j>"] = actions.move_selection_next,
						},
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			local builtin = require("telescope.builtin")
			local keymap = vim.keymap
			keymap.set("n", "<leader><leader>", builtin.find_files, {})
			keymap.set("n", "<leader>/", builtin.live_grep, {})
			keymap.set("n", "<leader>fo", builtin.oldfiles, {})

			require("telescope").load_extension("ui-select")
		end,
	},
}
