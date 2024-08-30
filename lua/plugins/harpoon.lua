return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon.setup({})

    local k = vim.keymap

    k.set("n", "<leader>hh", function()
      harpoon:list():add()
    end)
    k.set("n", "<leader>hl", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)
    k.set("n", "gi", function()
      harpoon:list():select(1)
    end)
    k.set("n", "go", function()
      harpoon:list():select(2)
    end)
    k.set("n", "gp", function()
      harpoon:list():select(3)
    end)
    k.set("n", "gj", function()
      harpoon:list():select(4)
    end)
    k.set("n", "gk", function()
      harpoon:list():select(5)
    end)
    k.set("n", "gl", function()
      harpoon:list():select(6)
    end)

    -- Previous and Next
    k.set("n", "h[", function()
      harpoon:list():prev()
    end)
    k.set("n", "h]", function()
      harpoon:list():next()
    end)
  end,
}
