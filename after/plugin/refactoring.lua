require('refactoring').setup({})
local wk = require("which-key")

wk.register({
    ["<leader>r"] = {
        name = "+Refactoring",
        i = { [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], "Inline variable" }, 
    },
}, { noremap = true, silent = true, expr = false })
  
