return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  -- keys = {
  --   {"<leader>tt", "<cmd>NvimTreeToggle<cr>", desc = "nvim-tree toggle"},
  -- },
  config = function()
    require("nvim-tree").setup {
    }
  end,
}
