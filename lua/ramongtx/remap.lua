vim.g.mapleader = " "

local kmap = vim.keymap.set

kmap("n", "<leader>pv", vim.cmd.Ex)

kmap("v", "J", ":m '>+1<CR>gv=gv")
kmap("v", "K", ":m '<-2<CR>gv=gv")

kmap("n", "J", "mzJ`z")
kmap("n", "<C-d>", "<C-d>zz")
kmap("n", "<C-u>", "<C-u>zz")
kmap("n", "n", "nzzzv")
kmap("n", "N", "Nzzzv")

-- next greatest remap ever : asbjornHaland
kmap({"n", "v"}, "<leader>y", [["+y]])
kmap("n", "<leader>Y", [["+Y]])

kmap({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
kmap("i", "<C-c>", "<Esc>")

kmap("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
kmap({"i", "n", "v"}, "<C-q>", ":qa<CR>")
kmap({"i", "n", "v"}, "<C-Q>", ":qa!<CR>")

-- window management
kmap("n", "<leader>sv", "<C-w>v") -- split window vertically
kmap("n", "<leader>sh", "<C-w>s") -- split window horizontally
kmap("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
kmap("n", "<leader>sx", ":close<CR>") -- close current split window
