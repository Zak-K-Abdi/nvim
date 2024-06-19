return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()
            require('lualine').setup({
                opts = { theme = "catppuccin",
                         icons_enabled = true, 
                       },

                sections = {
                    lualine_a = { 'mode' },
                    lualine_b = { 'branch' },
                    lualine_c = {
                        { 'filename', file_status = true, path = 1},
                        { 'diagnostics', sources = { 'nvim_lsp' }, symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '}}
                        },
                    },
                
                })
            
            end,
    },

    { "nvim-tree/nvim-web-devicons"},
}
