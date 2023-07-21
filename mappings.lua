-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["H"] = { "<cmd>bprev<cr>", desc = "Previous tab" },
    ["L"] = { "<cmd>bnext<cr>", desc = "Previous tab" },
    ["0"] = { "q", desc = "delete this window" },
    ["1"] = { "o", desc = "delete other window" },
    ["o"] = { "w", desc = "Previous window" },
    ["<leader>ss"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search inside buffer" },
    ["<leader>sm"] = { "<cmd>Telescope man_pages<cr>", desc = "Search for man page" },
    ["<leader>sf"] = { "<cmd>Telescope live_grep<cr>", desc = "Search within files" },
    ["<leader>sg"] = { "<cmd>Telescope git_status<cr>", desc = "Search GIT" },
    ["<leader>gG"] = { "<cmd>Neogit<cr>", desc = "Neogit" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  i = {
    ["<C-BS>"] = { "<C-W>", desc = "Delete previous word" },
    ["<C-H>"] = { "<S-Left>", desc = "previous word" },
    ["<C-L>"] = { "<S-Right>", desc = "previous word" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
