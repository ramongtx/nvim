local kmap = vim.keymap.set
local wk = require("which-key")

wk.register({
    ["<leader>s"] = {
        name = "+Window management",
        ["v"] = { "<C-w>v", "Split window vertically" },
        ["h"] = { "<C-w>s", "Split window horizontally" },
        ["e"] = { "<C-w>=", "Make split windows equal width & height" },
        ["x"] = { ":close<CR>", "Close current split window" },
    },
    ["<leader>pv"] = { ":NvimTreeFocus<CR>", "Open explorer" },
    ["<leader>r"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Replace word under cursor" },
})


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

-- Quick exit
kmap({"i", "n", "v"}, "<C-q>", ":qa<CR>")
kmap({"i", "n", "v"}, "<C-S-q>", ":qa!<CR>")

-- trim whitespace
kmap('n', '<leader>wt', [[:%s/\s\+$//e<cr>]])
