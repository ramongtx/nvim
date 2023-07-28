return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      prompt_prefix = " ",
      selection_caret = " ",
      mappings = {
        i = {
          ["<C-j>"] = function(...)
            return require("telescope.actions").cycle_history_next(...)
          end,
          ["<C-k>"] = function(...)
            return require("telescope.actions").cycle_history_prev(...)
          end,
        },
      },
    },
  },
}
