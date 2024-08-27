return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tee/nvim-web-devicons",
    config = function()
      local nvimtree = require("nvim-tree")

      -- recommended settings from the documentation
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      nvimtree.setup({
        view = {
          width = 35,
          relativenumber = true,
        },

        -- Change folder arrow icons
        renderer = {
          indent_markers = {
            enable = true,
          },
          icons = {
            glyphs = {
              folder = {
                arrow_closed = "├", -- folder closed
                arrow_open = "└", -- folder opened
              },
            },
          },
        },

        actions = {
          open_file = {
            window_picker = {
              enable = false,
            },
          },
        },
        filters = {
          custom = { ".DS_Store" },
        },
        git = {
          ignore = false,
        },
      })

      -- keymaps
      local k = vim.keymap

      k.set("n", "tt", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
      k.set("n", "tf", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
      k.set("n", "te", "<cmd>NvimTreeFocus<CR>", { desc = "Focus on the tree" })

      k.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
      k.set("n", "<leader>tf", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
      k.set("n", "<leader>te", "<cmd>NvimTreeFocus<CR>", { desc = "Focus on the tree" })
      k.set("n", "<leader>tc", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
      k.set("n", "<leader>tr", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
    end,
  },
}
