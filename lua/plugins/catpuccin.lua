return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        opts = {flavour = "mocha",
                term_colors = false,
                integrations = {
                treesitter = true,
                cmp = true,
                },
        },
        init = function()
            vim.cmd.colorscheme("catppuccin")
        end,
    },
}

