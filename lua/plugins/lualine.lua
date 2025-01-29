-- lualine.lua
--
-- Custom status line
--

return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		event = "VeryLazy",
		config = function()
			-- Custom Lualine component to show attached language server
			local clients_lsp = function()
				local clients = vim.lsp.get_clients()
				if next(clients) == nil then
					return ""
				end

				local c = {}
				for _, client in pairs(clients) do
					table.insert(c, client.name)
				end
				return " " .. table.concat(c, " - ")
			end
			require("lualine").setup({
				options = {
					theme = "auto",
					component_separators = "",
					section_separators = { left = " ", right = " " },
				},
				sections = {
					lualine_a = {
						{ "mode", separator = { left = " ", right = "" }, icon = "" },
					},
					lualine_b = {
						{
							"filetype",
							icon_only = true,
							padding = { left = 1, right = 0 },
						},
						"filename",
					},
					lualine_c = {
						{
							"branch",
							icon = "",
						},
						{
							"diff",
							symbols = { added = " ", modified = " ", removed = " " },
							colored = true,
						},
					},
					lualine_x = {
						{
							"diagnostics",
							symbols = { error = " ", warn = " ", info = " ", hint = "" },
							update_in_insert = true,
						},
					},
					lualine_y = { clients_lsp },
					lualine_z = {
						{ "location", separator = { left = "", right = " " }, icon = "" },
					},
				},
				inactive_sections = {
					lualine_a = { "filename" },
					lualine_b = {},
					lualine_c = {},
					lualine_x = {},
					lualine_y = {},
					lualine_z = { "location" },
				},
				extensions = { "trouble" },
			})
		end,
	},
}
