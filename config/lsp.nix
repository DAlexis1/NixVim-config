{
    plugins.lspsaga = {
        enable = true;
    };
    plugins.cmp-nvim-lsp = {
        enable = true;
    };
    plugins.lsp = {
        enable = true;
        keymaps = {
            lspBuf = {
                  K = "hover";
                  gD = "references";
                  gd = "definition";
                  gi = "implementation";
                  gt = "type_definition";
            };
            extra = [
                {
                    key = "gf";
                    action = "<Cmd>Lspsaga finder<CR>";
                }
                {
                    key = "gr";
                    action = "<Cmd>Telescope lsp_references<CR>";
                } 
                {
                    key = "<leader>ca";
                    action = "<Cmd>Lspsaga code_action<CR>";
                }
                {
                    key = "<leader>rn";
                    action = "<Cmd>Lspsaga rename<CR>";
                }
                {
                    key = "<leader>D";
                    action = "<Cmd>Lspsaga show_line_diagnostics<CR>";
                } 
                {
                    key = "<leader>d";
                    action = "<Cmd>Lspsaga show_cursor_diagnostic<CR>";
                }

            ];
        };
        servers = {
            clangd = {
                enable = true;
                cmd = [ "clangd" "--offset-encoding=utf-16" ];
            };
            bashls = {
                enable = true;
            };
            texlab = {
                enable = true;
            };
            pyright = {
                enable = true;
                settings = {
                    pyright = {
                        disableOrganizeImports = true;
                        analysis = {
                            autoSearchPaths = true;
                            useLibraryCodeForTypes = true;
                            diagnosticMode = "workspace";
                            autoImportCompletions = true;
                        };
                    };
                };
            };
            nil-ls = {
                enable = true;
            };
        };
    };
}
