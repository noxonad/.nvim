return {
  "kdheepak/lazygit.nvim",
  lazy = true,
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },

  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-lua/plenary.nvim",
  },

  keys = {
    { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
  },

  config = function()
    require("telescope").load_extension("lazygit")
  end,
}
