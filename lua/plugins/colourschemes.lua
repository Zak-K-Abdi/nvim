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
   --]] 

--[[   {
        "EdenEast/nightfox.nvim",
        config = function()
            require("nightfox").setup({})
            vim.cmd.colorscheme("carbonfox")
        end,
    },
    ]]

    {
        "AlexvZyl/nordic.nvim",
        config = function()
            require('nordic').load()
        end,

    },
    

--[[    {
        "olivercederborg/poimandres.nvim",
        config = function()
            require('poimandres').setup{}
            vim.cmd.colorscheme('poimandres')
        end,
    },
    ]]

}
