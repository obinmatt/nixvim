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
        key = "<leader>gs";
        mode = [ "n" ];
        action = ":Git<CR>";
        options = {
            silent = true;
            desc = "Toggle vim fugitive";
        };
    }
    {
        key = "<leader>gc";
        mode = [ "n" ];
        action = ":Git commit<CR>";
        options = {
            silent = true;
            desc = "Toggle vim fugitive commit";
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
