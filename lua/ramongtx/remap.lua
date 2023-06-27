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
    ["J"] = { "mzJ`z", "Append next line to this" },

    -- Scroll and recenter
    ["<C-d>"] = { "<C-d>zz", "which_key_ignore" },
    ["<C-u>"] = { "<C-u>zz", "which_key_ignore" },

    -- Keep cursor in the middle after seach
    ["n"] = { "nzzzv", "which_key_ignore" },
    ["N"] = { "Nzzzv", "which_key_ignore" },

    ['<leader>w'] = { [[:%s/\s\+$//e<cr>]], "Trim whitespace" },
    ["<leader>Y"] = { [["+Y]], "Copy line to OS clipboard" },
    ["<leader>y"] = { [["+y]], "Copy selection to OS clipboard" },
    ["<leader>d"] = { [["_d]], "Delete to void" },
})

wk.register({
    J = { ":m '>+1<CR>gv=gv", "Move selection down" },
    K = { ":m '<-2<CR>gv=gv", "Move selection up" },
    ["<leader>y"] = { [["+y]], "Copy selection to OS clipboard" },
    ["<leader>d"] = { [["_d]], "Delete to void" },
}, { mode = "v" })

wk.register({
    -- In Insertion mode, C-c is escape
    ["<C-c>"] = { "<Esc>", "which_key_ignore" },
}, { mode = "i", })

wk.register({
    -- Quick exit
    ["<C-q>"] = { ":qa<CR>", "which_key_ignore" },
    ["<C-S-q>"] = { ":qa!<CR>", "which_key_ignore" },
}, {
    mode = { "i", "n", "v" }
})


