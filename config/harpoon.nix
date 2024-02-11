{
    config.plugins.harpoon = {
        enable = true;
        enableTelescope = true;
        keymapsSilent = true;
        keymaps = {
            addFile = "<leader>a";
            toggleQuickMenu = "<C-e>";
            navFile = { 
                "1" = "<C-h>";
                "2" = "<C-t>";
                "3" = "<C-n>";
                "4" = "<C-s>";
            };
            navNext = "<C-S-P>";
            navPrev = "<C-S-N>";
        };
    };
}

