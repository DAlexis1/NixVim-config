{
    plugins.treesitter = {
        enable = true;
        settings = {
            auto_install = true;
            ensure_installed = [
                "c"
                "cpp"
                "latex"
                "python"
                "bash"
                "yaml"
                "markdown"
                "nix"
                "vim"
                "lua"
                "regex"
                "markdown_inline"
            ];
            highlight = {
                enable = true;
                additional_vim_regex_highlighting = true;
            };
            indent.enable = true;
        };
    };
}
