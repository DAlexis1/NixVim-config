{pkgs, ...}: {
  extraPackages = with pkgs; [
    shfmt
    python312Packages.autopep8
    clang-tools
    texlivePackages.latexindent
    alejandra
  ];
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        bash = ["shfmt"];
        c = ["clang_format"];
        cpp = ["clang_format"];
        python = ["autopep8"];
        tex = ["latexindent"];
        nix = ["alejandra"];
      };
      format_on_save = ''
        function(bufnr)
          -- Disable "format_on_save lsp_fallback" for lanuages that don't
          -- have a well standardized coding style. You can add additional
          -- lanuages here or re-enable it for the disabled ones.
          local disable_filetypes = {}
          return {
            timeout_ms = 500,
            lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype]
          }
        end
      '';
    };
  };
}
