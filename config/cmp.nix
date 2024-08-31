{
    plugins.luasnip = {
        enable = true;
    };
    plugins.friendly-snippets.enable = true;
    plugins.cmp-nvim-lsp = {
        enable = true;
    };
    plugins.cmp-path = {
        enable = true;
    };
    plugins.cmp-buffer = {
        enable = true;
    };

    plugins.cmp = {
        enable = true;
        settings = {
            mapping = {
                "<C-j>" = "cmp.mapping.select_next_item()";
                "<C-k>" = "cmp.mapping.select_prev_item()";
                "<C-Space>" = "cmp.mapping.complete()";
                "<C-e>" = "cmp.mapping.abort()";
                "<CR>" = "cmp.mapping.confirm({select = false})";
            };
            completion = {
                completeopt = "menu,menuone,noinsert,noselect";
            };
            sources = [
            {
                name = "luasnip";
            }
            {
                name = "nvim_lsp";
            }
            {
                name = "path";
            }
            {
                name = "buffer";
            }
            ];

            # completion = {
            #     autocomplete =  [
            #       "require('cmp.types').cmp.TriggerEvent.TextChanged"
            #     ];
            # };
            formatter = {
                expandable_indicator = true;
            };
            performance = {
                max_view_entries = 10;
            };
            snippet = {
                expand = 
                ''
                function(args)
                    require('luasnip').lsp_expand(args.body)
                end
                '';
            };
            view = {
                entries = {
                    name = "custom";
                    selection_order = "top_down";
                };
                docs.auto_open = true;
            };
        };
    };
}
