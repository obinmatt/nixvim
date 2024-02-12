{
    config.plugins.telescope = {
        enable = true;

        keymaps = {
            "<leader>pf" = {
                action = "find_files";
                desc = "Telescope Project Files";
            };
            "<C-p>" = {
                action = "git_files";
                desc = "Telescope Git Files";
            };
            "<leader>fw" = {
                action =  "live_grep";
                desc = "Telescope Live Grep";
            };
            "<C-b>" = {
                action = "buffers";
                desc = "Telescope buffers";
            };
            "<leader>fr" = {
                action = "lsp_references";
                desc = "Telescope LSP references";
            };
            "<leader>fd" = {
                action = "lsp_definitions";
                desc = "Telescope LSP definitions";
            };
            "<leader>fi" = {
                action = "lsp_implementations";
                desc = "Telescope LSP implementations";
            };
            "<leader>ft" = {
                action = "lsp_type_definitions";
                desc = "Telescope LSP type definitions";
            };
            "<C-d>" = {
                action = "diagnostics";
                desc  = "Telescope LSP diagnostics";
            };
        };
        
        extensions.fzf-native = {
            enable = true;
            fuzzy = true;
            caseMode = "smart_case";
        };
    };
}
