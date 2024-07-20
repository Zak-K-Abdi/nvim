return {
--[[    {
        "catppuccin/nvim",
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                term_colors = false,
                integrations = {
                treesitter = true,
                cmp = true,
            },
        })
        
            vim.cmd.colorscheme("catppuccin")
        end,
    },
    
    ]]

--[[    {
        "ellisonleao/gruvbox.nvim",
        config = function()
            local gruvbox = require("gruvbox")
            gruvbox.setup({
                terminal_colors = true,
                contrast = "hard",
            })

            vim.cmd.colorscheme("gruvbox")
        end,

    },
    ]]

    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({})
            vim.cmd.colorscheme("tokyonight-night")
        end,
    },
    
}

