vim.g.accent_colour = "green"
vim.g.accent_darker = 1
vim.g.accent_incert_status = 1
vim.g.accent_no_bg = 1

return {
  { "alligator/accent.vim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "accent",
    },
  },
}
