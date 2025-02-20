local k = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/Decrement numbers
k.set("n", "+", "<C-a>", { desc = "Increment a number" })
k.set("n", "-", "<C-x>", { desc = "Decrement a number" })

-- Remove highlighting
k.set("n", "<leader>nh", "<CMD>:nohl<CR>", { desc = "Remove highlighting" })

-- Delete a work bakcwards
k.set("n", "dbw", 'vb"_d')

-- Select all
k.set("n", "<C-a>", "gg<S-v>G")

-- Create new line without comments
k.set("n", "<leader>o", "o<Esc>^Da", opts)
k.set("n", "<leader>O", "O<Esc>^Da", opts)

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

-- Ctrl + backspace to remove the whole word
k.set("i", "<C-H>", "<C-w>")

-- Buffer selector
k.set("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", { desc = "Go to buffer 1" })
k.set("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", { desc = "Go to buffer 2" })
k.set("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", { desc = "Go to buffer 3" })
k.set("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", { desc = "Go to buffer 4" })
k.set("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", { desc = "Go to buffer 5" })
k.set("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", { desc = "Go to buffer 6" })
k.set("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", { desc = "Go to buffer 7" })
k.set("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", { desc = "Go to buffer 8" })
k.set("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", { desc = "Go to buffer 9" })
k.set("n", "<leader>0", "<Cmd>BufferLineGoToBuffer -1<CR>", { desc = "Go to the last buffer" })

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
  pattern = { "rust" },
  callback = function()
    k.set("n", "<leader>ruw", "a.unwrap()<ESC>", { desc = "Rust print '.unwrap()'" })
    k.set("n", "<leader>rlc", "a.to_lowercase()<ESC>", { desc = "Rust print '.to_lowercase()'" })
    k.set("n", "<leader>ruc", "a.to_uppercase()<ESC>", { desc = "Rust print '.to_uppercase()'" })
    k.set("n", "<leader>rts", "a.to_string()<ESC>", { desc = "Rust print '.to_string()'" })
    k.set("n", "<leader>ras", "a.as_string()<ESC>", { desc = "Rust print '.as_string()'" })
  end,
})

-- Disable default terminal keymaps
-- since I'm using another terminal
k.del("n", "<leader>fT")
k.del("n", "<leader>ft")
k.del("n", "<C-/>")
k.del("n", "<C-_>")
k.del("t", "<C-/>")
k.del("t", "<C-_>")

-- Set floating terminal keybindings
k.set("n", "<C-/>", "<Cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
k.set("t", "<C-/>", "<Cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })

-- Terminal on the bottom on the screen and split vertically
k.set("n", "<C-t>", ":split<CR>:resize 10<CR>:terminal<CR>", { noremap = true, silent = true })
k.set("n", "<C-'>", ":vsplit<CR>:terminal<CR>", { noremap = true, silent = true })
k.set("t", "<ESC><ESC>", "<C-\\><C-n>", { desc = "Exit terminal insert mode", noremap = true, silent = true })

-- Diagnostics
k.set("n", "<leader><C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
