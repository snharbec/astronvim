return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "vertical",
        layout_config = { prompt_position = "bottom" },
        sorting_strategy = "descending",
        winblend = 1,
        theme = "flex",
        mappings = {
          -- for input mode
          i = {
            ["<C-n>"] = "move_selection_next",
            ["<C-p>"] = "move_selection_previous",
            ["<C-j>"] = "move_selection_next",
            ["<C-k>"] = "move_selection_previous",
            ["<C-f>"] = "close",

            ["<Down>"] = "move_selection_next",
            ["<Up>"] = "move_selection_previous",

            ["<CR>"] = "select_default",
            ["<C-l>"] = "select_default",
            ["<C-s>"] = "select_horizontal",
            ["<C-v>"] = "select_vertical",
            ["<C-t>"] = "delete_buffer",

            ["<C-u>"] = "preview_scrolling_up",
            ["<C-d>"] = "preview_scrolling_down",

            -- ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
            ["<Tab>"] = "close",
            ["<S-Tab>"] = "close",
            -- ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
            ["<C-h>"] = "which_key",
            ["<esc>"] = "close",
          },
        },
      },
      pickers = {
        find_files = {},
      },
    },
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}
