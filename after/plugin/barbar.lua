local wk = require("which-key")

require'barbar'.setup {
    -- Set the filetypes which barbar will offset itself for
    sidebar_filetypes = {
        -- Use the default values: {event = 'BufWinLeave', text = nil}
        NvimTree = true,
        -- Or, specify the text used for the offset:
        undotree = {text = 'undotree'},
        -- Or, specify the event which the sidebar executes when leaving:
        ['neo-tree'] = {event = 'BufWipeout'},
        -- Or, specify both
        Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
    },
}

-- Move to previous/next
wk.register({
    ['<leader>'] = {
        [','] = { '<Cmd>BufferPrevious<CR>', 'Previous buffer' },
        ['.'] = { '<Cmd>BufferNext<CR>', 'Next buffer' },
        ['1'] = { '<Cmd>BufferGoto 1<CR>', 'Go to buffer 1' },
        ['2'] = { '<Cmd>BufferGoto 2<CR>', 'Go to buffer 2' },
        ['3'] = { '<Cmd>BufferGoto 3<CR>', 'Go to buffer 3' },
        ['4'] = { '<Cmd>BufferGoto 4<CR>', 'Go to buffer 4' },
        ['5'] = { '<Cmd>BufferGoto 5<CR>', 'Go to buffer 5' },
        ['6'] = { '<Cmd>BufferGoto 6<CR>', 'Go to buffer 6' },
        ['7'] = { '<Cmd>BufferGoto 7<CR>', 'Go to buffer 7' },
        ['8'] = { '<Cmd>BufferGoto 8<CR>', 'Go to buffer 8' },
        ['9'] = { '<Cmd>BufferGoto 9<CR>', 'Go to buffer 9' },
        -- Close buffer
        ['x'] = { '<Cmd>BufferClose<CR>', 'Close buffer' },
    }
})
