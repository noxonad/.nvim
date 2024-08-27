return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  keys = {
    { "<C-h>", "<cmd>TmuxNavigateLeft<CR>", "Tmux window left" },
    { "<C-l>", "<cmd>TmuxNavigateRight<CR>", "Tmux window right" },
    { "<C-j>", "<cmd>TmuxNavigateDown<CR>", "Tmux window down" },
    { "<C-k>", "<cmd>TmuxNavigateUp<CR>", "Tmux window up" },
  },
}
