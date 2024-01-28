{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./nvim-cmp.nix
    ./lsp.nix
  ];

  config = {
    # Plugins without extensive config
    plugins.telescope.enable = true;
    plugins.treesitter.enable = true;
    plugins.luasnip.enable = true;
    plugins.todo-comments.enable = true;
 
    colorschemes.gruvbox.enable = true;
    globals.mapleader = " ";
    
    options = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
    };
    
    keymaps = [
      {
        action = "<cmd>Telescope live_grep<CR>";
        key = "<leader>g";
      }
    ];
  };
}
