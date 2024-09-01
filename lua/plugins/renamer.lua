return {
  "filipdutescu/renamer.nvim",
  branch = "master",
  requires = { { "nvim-lua/plenary.nvim" } },
  config = function()
    local renamer = require("renamer")

    renamer.setup({})

    local k = vim.keymap
    k.set("n", "<leader>rn", "<CMD>lua require('renamer').rename()<CR>", { desc = "rename a variable" })
  end,
}
