{pkgs, ...}: {
  extraPackages = with pkgs; [
    luajitPackages.luarocks
    luajitPackages.lua-utils-nvim
  ];
  plugins.neorg = {
    enable = true; #Until problems with lua-utils are resolved
    modules = {
      "core.defaults" = {};
      "core.concealer" = {
        folds = false;
        code_block = {
          conceal = true;
          content_only = true;
        };
      };
      "core.dirman" = {
        config = {
          workspace = {
            notes = "~/Bureau/neorgnotes";
          };
          default_workspace = "notes";
        };
      };
    };
  };
}
