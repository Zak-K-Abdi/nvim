return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({})
        end,
    },

    {
        "neovim/nvim-lspconfig",
        dependencies = {'hrsh7th/cmp-nvim-lsp'},
        config = function()
            local lspconfig = require("lspconfig")
            
            local servers = {"clangd"}
            
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            
            for _, lsp in ipairs(servers) do
                lspconfig[lsp].setup{capabilities = capabilities}
            end
        end,
    },

    
    {
        "hrsh7th/nvim-cmp",
        dependencies = {'L3MON4D3/LuaSnip',
                        'saadparwaiz1/cmp_luasnip',
                        'hrsh7th/cmp-nvim-lsp',
                        'hrsh7th/cmp-buffer',
                       },

        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },

                mappings = {
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()

                        elseif require("luasnip").expand_or_jumpable() then
                            require("luasnip").expand_or_jump()
                        
                        else
                            fallback()
                        end
                    end, {"i", "s"}),

                    ["<S-Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        elseif require("luasnip").jumpable(-1) then
                            require("luasnip").jump(-1)
                        else
                            fallback()
                        end
                    end, {"i", "s"}),
                },

                    sources = cmp.config.sources(
                    {
                        { name = 'nvim_lsp' },
                        { name = 'luasnip' }
                    },

                    {
                        { name = 'buffer' },
                    })

                })
                    
            end, 
    },

    { "L3MON4D3/LuaSnip" },
    { "saadparwaiz1/cmp_luasnip" },
    { "hrsh7th/cmp-buffer" },

}
