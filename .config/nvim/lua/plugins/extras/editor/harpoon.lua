return {
  {
    "ThePrimeagen/harpoon",
    --stylua: ignore
    keys = {
      { "<leader>ha", function() require("harpoon.mark").add_file() end, desc = "Add Mark" },
      { "<leader>hh", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Menu" },
      { "<leader>hf", "<cmd>Telescope harpoon marks<CR>", desc = "Files" },
      { "<leader>h1", function() require("harpoon.ui").nav_file(1) end, desc = "File 1" },
      { "<leader>h2", function() require("harpoon.ui").nav_file(2) end, desc = "File 2" },
      { "<leader>h3", function() require("harpoon.ui").nav_file(3) end, desc = "File 3" },
      { "<leader>h4", function() require("harpoon.ui").nav_file(4) end, desc = "File 4" },
      { "<leader>h5", function() require("harpoon.ui").nav_file(5) end, desc = "File 5" },
      { "<leader>h6", function() require("harpoon.ui").nav_file(6) end, desc = "File 6" },
      { "<leader>h7", function() require("harpoon.ui").nav_file(7) end, desc = "File 7" },
      { "<leader>h8", function() require("harpoon.ui").nav_file(8) end, desc = "File 8" },
      { "<leader>h9", function() require("harpoon.ui").nav_file(9) end, desc = "File 9" },
      { "]H", function() require("harpoon.ui").nav_next() end, desc = "Next Harpoon File" },
      { "[H", function() require("harpoon.ui").nav_prev() end, desc = "Prev Harpoon File" },
      { "<M-]>", function() require("harpoon.ui").nav_next() end, desc = "Next Harpoon File" },
      { "<M-[>", function() require("harpoon.ui").nav_prev() end, desc = "Prev Harpoon File" },
    },
    opts = {
      globalsettings = {
        save_on_toggle = true,
        enter_on_sendcmd = true,
      },
    },
    config = function()
      require("lazyvim.util").on_load("telescope.nvim", function()
        require("telescope").load_extension("harpoon")
      end)
    end,
  },
  {
    "goolord/alpha-nvim",
    optional = true,
    opts = function(_, dashboard)
      local button = dashboard.button("h", "󱌧 " .. " Harpoon", "<cmd>Telescope harpoon marks<CR>")
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
      table.insert(dashboard.section.buttons.val, 5, button)
    end,
  },
  {
    "nvimdev/dashboard-nvim",
    optional = true,
    opts = function(_, opts)
      local harpoon = {
        action = "Telescope harpoon marks",
        desc = " Harpoon",
        icon = "󱌧 ",
        key = "h",
      }

      harpoon.desc = harpoon.desc .. string.rep(" ", 43 - #harpoon.desc)
      harpoon.key_format = "  %s"

      table.insert(opts.config.center, 5, harpoon)
    end,
  },
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>h"] = { name = "+󱌧 harpoon" },
      },
    },
  },
}
