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
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({})
            vim.cmd.colorscheme("tokyonight-night")
        end,
    },
    ]]

--[[    {
        "2giosangmitom/nightfall.nvim",
        config = function()
            require("nightfall").setup({})
            vim.cmd.colorscheme("nightfall")
        end
    },
    ]]
    
    {
        "EdenEast/nightfox.nvim",
        config = function()
            require("nightfox").setup({})
            vim.cmd.colorscheme("carbonfox")
        end,
    },
    


--[[    {        
        "xiantang/darcula-dark.nvim",
        config = function()
            vim.cmd.colorscheme("darcula-dark")
        end
    },
    ]]
}

