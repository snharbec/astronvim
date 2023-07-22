return {
  {
    "LunarVim/bigfile.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      filesize = 5,
      pattern = { "*" },
      features = {
        "indent_blankline",
        "illuminate",
        "nvim-illuminate",
        "lsp",
        "treesitter",
        "syntax",
        "matchparen",
        "vimopts",
        "filetype",
      }
    }
  },
}
