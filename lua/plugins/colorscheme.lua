return {
  -- {
  -- 	"neanias/everforest-nvim",
  -- 	version = false,
  -- 	lazy = false,
  -- 	priority = 1000,
  -- 	config = function()
  -- 		require("everforest").setup({
  -- 			transparent_background_level = 1,
  -- 			inlay_hints_background = "dimmed",
  -- 			background = "medium",
  -- 		})
  -- 		vim.cmd.colorscheme("everforest")
  -- 	end,
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   config = function()
  --     vim.cmd.colorscheme("tokyonight-night")
  --   end
  -- }
  -- {
  --   "shaunsingh/nord.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   config = function()
  --     vim.cmd.colorscheme("nord")
  --   end
  -- }
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('onedark').setup {
        style = 'darker'
      }
      require('onedark').load()
    end
  }
}
