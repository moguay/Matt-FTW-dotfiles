return {
  "roobert/search-replace.nvim",
  opts = {
    default_replace_single_buffer_options = "gcI",
    default_replace_multi_buffer_options = "egcI",
  },
  -- stylua: ignore
  keys = {
  { "<C-r>", "<CMD>SearchReplaceSingleBufferVisualSelection<CR>", desc = "Search and Replace in Visual Selection", mode = "v" },
  { "<C-s>", "<CMD>SearchReplaceWithinVisualSelection<CR>", desc = "Search and Replace Within Visual Selection", mode = "v" },
  { "<C-b>", "<CMD>SearchReplaceWithinVisualSelectionCWord<CR>", desc = "Search and Replace Within Visual Selection (Current Word)", mode = "v" },

  {  "<leader>srw", "<CMD>SearchReplaceSingleBufferSelections<CR>", desc = "Word on Buffer", mode = "n" },
  {  "<leader>srb", "<CMD>SearchReplaceSingleBufferOpen<CR>", desc = "Buffer", mode = "n" },

  -- { "n", "<leader>rbs", "<CMD>SearchReplaceMultiBufferSelections<CR>", desc = "Search and Replace in Multi Buffer Selections" },
  -- { "n", "<leader>rbo", "<CMD>SearchReplaceMultiBufferOpen<CR>", desc = "Search and Replace in Multi Buffer, Open" },
  -- { "n", "<leader>rbw", "<CMD>SearchReplaceMultiBufferCWord<CR>", desc = "Search and Replace in Multi Buffer (Current Word)" },
  -- { "n", "<leader>rbW", "<CMD>SearchReplaceMultiBufferCWORD<CR>", desc = "Search and Replace in Multi Buffer (Current WORD)" },
  -- { "n", "<leader>rbe", "<CMD>SearchReplaceMultiBufferCExpr<CR>", desc = "Search and Replace in Multi Buffer (Current Expression)" },
  -- { "n", "<leader>rbf", "<CMD>SearchReplaceMultiBufferCFile<CR>", desc = "Search and Replace in Multi Buffer (Current File)" },
  },
}