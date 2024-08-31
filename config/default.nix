{pkgs, ...}: {
  # Import all your configuration modules here
  imports = [
    ./cmp.nix
    ./telescope.nix
    ./options.nix
    ./lualine.nix
    ./comment.nix
    ./neogit.nix
    ./lsp.nix
    ./autopairs.nix
    ./treesitter.nix
    ./noice.nix
    ./conform.nix
    ./neorg.nix
  ];
  viAlias = true;
  vimAlias = true;
  clipboard.providers.xclip.enable = true;
  colorschemes.modus.enable = true;
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  keymaps = [
    {
      key = "<leader>h";
      action = "<C-w>h";
      options.desc = "Navigate to left pane";
    }
    {
      key = "<leader>j";
      action = "<C-w>j";
      options.desc = "Navigate to down pane";
    }
    {
      key = "<leader>k";
      action = "<C-w>k";
      options.desc = "Navigate to up pane";
    }
    {
      key = "<leader>l";
      action = "<C-w>l";
      options.desc = "Navigate to right pane";
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-d>";
      options.desc = "Go down half a page";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-u>";
      options.desc = "Go up half a page";
    }
    {
      key = "<leader>sv";
      action = "<Cmd>vsplit<CR>";
      options.desc = "Split vertically";
    }
    {
      key = "<leader>sh";
      action = "<Cmd>split<CR>";
      options.desc = "Split horizontally";
    }
    {
      key = "<A-j>";
      action = "<Cmd>move .+1<CR>";
      options.desc = "Move down line";
    }
    {
      key = "<A-k>";
      action = "<Cmd>move .-2<CR>";
      options.desc = "Move up line";
    }
    {
      mode = "x";
      key = "<A-j>";
      action = ":move '>+1<CR>gv";
      options.desc = "Move down line";
    }
    {
      mode = "x";
      key = "<A-k>";
      action = ":move '<-2<CR>gv";
      options.desc = "Move up line";
    }
    {
      key = "<leader>t";
      action = "<Cmd>split<CR><Cmd>resize 10<CR><Cmd>term<CR>i";
      options.desc = "Launch nvim terminal";
    }
    {
      mode = "t";
      key = "<Esc>";
      action = "<C-\\><C-n><Cmd>q!<CR>";
      options.desc = "Close nvim terminal";
    }
    {
      key = "<leader>g";
      action = "<Cmd>Neogit<CR>";
      options.desc = "Open neogit buffer";
    }
  ];
}
