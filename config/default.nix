{
# Import all your configuration modules here
    imports = [
        ./completion.nix
        ./harpoon.nix
        ./keymaps.nix
        ./lsp.nix
        ./none-ls.nix
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
            clipboard = "unnamedplus";

            scrolloff = 8;
            updatetime = 50;
        };

        colorschemes.rose-pine = {
            enable = true;
            transparentBackground = true;
        };

        viAlias = true;
        vimAlias = true;

        plugins.undotree.enable = true;
        plugins.fugitive.enable = true;
        plugins.todo-comments.enable = true;
        plugins.gitsigns = {
            enable = true;
            currentLineBlame = true;
        };
        plugins.lualine = {
            enable = true;
            globalstatus = true;
        };
        plugins.comment-nvim = {
            enable = true;
            sticky = true;
        };
    };
}

