local cmp = require("cmp")

return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "vuki656/package-info.nvim",
        event = { "BufRead package.json" },
        opts = {},
        keys = {
          {
            "<leader>cPs",
            "<cmd>lua require('package-info').show({ force = true })<cr>",
            desc = "Show Package Versions",
          },
          {
            "<leader>cPu",
            "<cmd>lua require('package-info').update()<cr>",
            desc = "Update Package",
          },
          {
            "<leader>cPr",
            "<cmd>lua require('package-info').delete()<cr>",
            desc = "Remove Package",
          },
          {
            "<leader>cPv",
            "<cmd>lua require('package-info').change_version()<cr>",
            desc = "Change Package Version",
          },
          {
            "<leader>cPn",
            "<cmd>lua require('package-info').install()<cr>",
            desc = "Install New Dependency",
          },
        },
      },
      {
        "petertriho/cmp-git",
      },
      {
        "amarakon/nvim-cmp-fonts",
      },
    },
    keys = {
      { "<leader>cM", ":CmpStatus<CR>", { desc = "Cmp Status" } },
    },
    opts = function(_, opts)
      cmp.setup.filetype("gitcommit", {
        sources = cmp.config.sources({
          { name = "git" },
        }),
      })

      cmp.setup.filetype("css", {
        sources = cmp.config.sources({
          { name = "fonts", option = { space_filter = "-" } },
        }),
      })
      opts.mapping = cmp.mapping.preset.insert({
        ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<S-CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<C-CR>"] = function(fallback)
          cmp.abort()
          fallback()
        end,
      })
      opts.window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      }
    end,
  },
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>cP"] = { name = "+packages" },
      },
    },
  },
}