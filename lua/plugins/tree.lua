return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,                    -- Load on startup so it can replace netrw cleanly
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- Optional, for file icons
  },
  keys = {
    { "<C-n>", "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" },
  },
  config = function()
    -- Disable netrw at the very start of your init.lua (recommended)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "right",
      },
      filters = {
        dotfiles = false,
      },
    })
  end,
}
