return {
  {
    "danymat/neogen",
    opts = {
      snippet_engine = "luasnip",
      enabled = true,
    },
    keys = {
      {
        "<leader>ad",
        function()
          require("neogen").generate()
        end,
        desc = "Default Annotation",
      },
      {
        "<leader>ac",
        function()
          require("neogen").generate({ type = "class" })
        end,
        desc = "Class",
      },
      {
        "<leader>af",
        function()
          require("neogen").generate({ type = "func" })
        end,
        desc = "Function",
      },
      {
        "<leader>at",
        function()
          require("neogen").generate({ type = "type" })
        end,
        desc = "Type",
      },
      {
        "<leader>aF",
        function()
          require("neogen").generate({ type = "file" })
        end,
        desc = "File",
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>a"] = { name = "+annotation" },
      },
    },
  },
  {
    "Zeioth/dooku.nvim",
    cmd = { "DookuGenerate", "DookuOpen", "DookuAutoSetup" },
    opts = {},
    keys = {
      {
        "<leader>ag",
        "<Cmd>DookuGenerate<CR>",
        desc = "Generate HTML Docs",
      },
    },
  },
  {
    "luckasRanarison/nvim-devdocs",
    cmd = {
      "DevdocsFetch",
      "DevdocsInstall",
      "DevdocsUninstall",
      "DevdocsOpen",
      "DevdocsOpenFloat",
      "DevdocsOpenCurrent",
      "DevdocsOpenCurrentFloat",
      "DevdocsUpdate",
      "DevdocsUpdateAll",
    },
    keys = {
      { "<leader>sE", "<cmd>DevdocsOpen<cr>", desc = "Devdocs" },
      { "<leader>se", "<cmd>DevdocsOpenCurrent<cr>", desc = "Devdocs Current" },
    },
    opts = {
      ensure_installed = {
        "css",
        "html",
        "javascript",
        "lua-5.4",
        "python-3.11",
        "react",
        "typescript",
        "angular",
        "bash",
        "fish-3.6",
        "git",
        "go",
        "rust",
        "sass",
        "vue-3",
        "docker",
        "markdown",
        "svelte",
        "tailwindcss",
        "eslint",
        "prettier",
        "npm",
        "node",
      },
    },
  },
}