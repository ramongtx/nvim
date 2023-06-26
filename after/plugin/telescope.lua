local builtin = require('telescope.builtin')
local wk = require("which-key")

wk.register({
    ['<leader>f'] = {
        name = '+Telescope',
        ["F"] = { builtin.find_files, 'Find all files' },
        f = { builtin.git_files, 'Find git files' },
        w = { function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, "Find grep" },
    }
})

