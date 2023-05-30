local kmap = vim.keymap.set

-- Open explorer
kmap("n", "<leader>pv", vim.cmd.Ex)

-- Move selection with context
kmap("v", "J", ":m '>+1<CR>gv=gv")
kmap("v", "K", ":m '<-2<CR>gv=gv")

-- Append next line to this
kmap("n", "J", "mzJ`z")

-- Scroll and recenter
kmap("n", "<C-d>", "<C-d>zz")
kmap("n", "<C-u>", "<C-u>zz")

-- Keep cursor in the middle after seach
kmap("n", "n", "nzzzv")
kmap("n", "N", "Nzzzv")

-- Copy to OS clipboard 
kmap({"n", "v"}, "<leader>y", [["+y]])
kmap("n", "<leader>Y", [["+Y]])

-- Delete to void
kmap({"n", "v"}, "<leader>d", [["_d]])

-- In Insertion mode, C-c is escape
kmap("i", "<C-c>", "<Esc>")

-- Replace word under cursor
kmap("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Quick exit
kmap({"i", "n", "v"}, "<C-q>", ":qa<CR>")
kmap({"i", "n", "v"}, "<C-S-q>", ":qa!<CR>")

-- window management
kmap("n", "<leader>sv", "<C-w>v") -- split window vertically
kmap("n", "<leader>sh", "<C-w>s") -- split window horizontally
kmap("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
kmap("n", "<leader>sx", ":close<CR>") -- close current split window

-- trim whitespace
kmap('n', '<leader>wt', [[:%s/\s\+$//e<cr>]])
