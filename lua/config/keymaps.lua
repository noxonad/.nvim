local k = vim.keymap
local opts = { noremap = true, silent = true }

-- Don't affect the register memory when deleting with x
-- k.set("n", "x", '"_x')

-- Increment/Decrement numbers
k.set("n", "+", "<C-a>")
k.set("n", "-", "<C-x>")

-- Delete a work bakcwards
k.set("n", "dbw", 'vb"_d')

-- Select all
k.set("n", "<C-a>", "gg<S-v>G")

-- Disable continuations
k.set("n", "<Leader>o", "o<Esc>^Da", opts)
k.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- New tab
k.set("n", "T", ":tabedit<Return>")
k.set("n", "<tab>", ":tabnext<Return>", opts)
k.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
k.set("n", "ss", ":split<Return>", opts)
k.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
k.set("n", "sh", "<C-w>h")
k.set("n", "sk", "<C-w>k")
k.set("n", "sj", "<C-w>j")
k.set("n", "sl", "<C-w>l")

-- Resize window
k.set("n", "<C-w><left>", "<C-w><")
k.set("n", "<C-w><right>", "<C-w>>")
k.set("n", "<C-w><up>", "<C-w>+")
k.set("n", "<C-w><down>", "<C-w>-")

-- Buffer selector
k.set("n", "<Leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", {})
k.set("n", "<Leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", {})
k.set("n", "<Leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", {})
k.set("n", "<Leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", {})
k.set("n", "<Leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", {})
k.set("n", "<Leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", {})
k.set("n", "<Leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", {})
k.set("n", "<Leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", {})
k.set("n", "<Leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", {})
k.set("n", "<Leader>0", "<Cmd>BufferLineGoToBuffer -1<CR>", {})

-- Moving text
-- Move text up and down
k.set("n", "<C-Down>", "<Esc>:m .+1<CR>", opts)
k.set("n", "<C-Up>", "<Esc>:m .-2<CR>", opts)
k.set("v", "<C-Down>", ":m .+1<CR>", opts)
k.set("v", "<C-Up>", ":m .-2<CR>", opts)
k.set("x", "<C-Down>", ":move '>+1<CR>gv-gv", opts)
k.set("x", "<C-Up>", ":move '<-2<CR>gv-gv", opts)

-- Treesitter folding
k.set("n", "<leader><", "<Cmd>foldclose<CR>", { desc = "Fold code" })
k.set("n", "<leader>>", "<Cmd>foldopen<CR>", { desc = "Unfold code" })

-- Rust specific
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "rs", "rust" },
  callback = function()
    k.set("n", "<leader>ruw", "a.unwrap()<ESC>")
  end,
})

-- Diagnostics
k.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
