local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- Fuzzy search files
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    -- Theme
    "ful1e5/onedark.nvim",

    -- Language parser
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },

    -- View AST with :TSPlaygroundToggle
    "nvim-treesitter/playground",

    -- Keeps function/class header on top
    "nvim-treesitter/nvim-treesitter-context",

    -- Extract code into functions/variables
    "theprimeagen/refactoring.nvim",

    -- Deep undo
    "mbbill/undotree",

    -- Git wrapper
    "tpope/vim-fugitive",

    -- Swap between vim and tmux panes
    "christoomey/vim-tmux-navigator",

    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    },

    -- File explorer
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },

    -- Comment lines with 'gcc'/'gbc'
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },

    -- Tabbed buffers
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {},
    },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
        }
    },
}

local opts = {}

require("lazy").setup(plugins, opts)
