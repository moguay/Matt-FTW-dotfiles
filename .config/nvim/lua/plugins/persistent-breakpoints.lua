return {
    {
        "Weissle/persistent-breakpoints.nvim",
        event = "BufReadPost",
        keys = {
            { "<leader>dbd", "<cmd>PBClearAllBreakpoints<cr>", desc = "Delete All Breakpoints" },
            { "<leader>dbc", "<cmd>PBSetConditionalBreakpoint<cr>", desc = "Set Conditional Breakpoint" },
            { "<leader>dbb", "<cmd>PBToggleBreakpoint<cr>", desc = "Toggle Breakpoint" },
        },
        config = function()
            require("persistent-breakpoints").setup({
                load_breakpoints_event = { "BufReadPost" },
            })
        end,
    },
}