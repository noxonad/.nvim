return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    refactoring = require("refactoring")

    refactoring.setup({})

    local k = vim.keymap

    -- k.set("n", "<leader>rv", "<CMD>rename_variable()<CR>", {})
  end,
}
