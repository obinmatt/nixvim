{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
		./completion.nix
		./harpoon.nix
		./keymaps.nix
		./lsp.nix
		./telescope.nix
		./treesitter.nix
  ];

  config = {
		globals.mapleader = " ";
		options = {
      number = true;
      relativenumber = true;

      tabstop = 4;
      softtabstop = 4;
      shiftwidth = 4;
      expandtab = true;

			smartindent = true;
			wrap = false;

			hlsearch = false;
			incsearch = true;

			termguicolors = true;

			scrolloff = 8;
			updatetime = 50;
    };

    colorschemes.gruvbox.enable = true;

		plugins.undotree.enable = true;
    plugins.fugitive.enable = true;
	};
}
