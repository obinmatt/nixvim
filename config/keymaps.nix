{
    config.keymaps = [
    {
        key = "<leader>u";
        mode = [ "n" ];
        action = ":UndotreeToggle<CR>";
        options = {
            silent = true;
            desc = "Toggle undotree";
        };
    }
    {
        key = "<leader>ft";
        mode = [ "n" ];
        action = ":NvimTreeToggle<CR>";
        options = {
            silent = true;
            desc = "Toggle nvim-tree";
        };
    }
    {
        key = "<leader>bp";
        mode = [ "n" ];
        action = ":BufferLinePick<CR>";
        options = {
            silent = true;
            desc = "Pick buffer to open";
        };
    }
    {
        key = "<leader>bc";
        mode = [ "n" ];
        action = ":BufferLinePickClose<CR>";
        options = {
            silent = true;
            desc = "Pick buffer to close";
        };
    }
    {
        key = "<leader>gs";
        mode = [ "n" ];
        action = ":Git<CR>";
        options = {
            silent = true;
            desc = "Toggle git fugitive";
        };
    }
    {
        key = "J";
        mode = [ "v" ];
        action = ":m '>+1<CR>gv=gv";
        options = {
            silent =  true;
            desc = "Move highlighed line down";
        };
    }
    {
        key = "K";
        mode = [ "v" ];
        action = ":m '<-2<CR>gv=gv";
        options = {
            silent =  true;
            desc = "Move highlighed line up";
        };
    }
    {
        key = "n";
        mode = [ "n" ];
        action = "nzzzv";
        options = {
            silent = true;
            desc = "Keep search terms in the middle";
        };
    }
    {
        key = "N";
        mode = [ "n" ];
        action = "Nzzzv";
        options = {
            silent = true;
            desc = "Keep search terms in the middle";
        };
    }
    {
        key = "<leader>s";
        mode = [ "n" ];
        action = ":%s/\<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>";
        options = {
            desc = "Replace all current word";
        };
    }
    ];
}
