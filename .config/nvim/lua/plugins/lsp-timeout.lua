return {
  {
    "hinell/lsp-timeout.nvim",
    event = "BufRead",
    dependencies = { "neovim/nvim-lspconfig" },
    enabled = false,
    init = function()
      vim.g["lsp-timeout-config"] = {
        startTimeout = 1000 * 1, -- ms before restart
      }
    end,
  },
}