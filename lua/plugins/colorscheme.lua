vim.g.accent_colour = "green"
vim.g.accent_darker = 1
vim.g.accent_incert_status = 1
vim.g.accent_no_bg = 1

return {
  { "alligator/accent.vim" },
  { "lurst/austere.vim" },
  { "fxn/vim-monochrome" },
  { "hardselius/warlock" },
  {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "accent",
    },
  },
}
