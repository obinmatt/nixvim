{
    config.plugins.bufferline = {
        enable = true;

        diagnostics = "nvim_lsp";
        offsets = [
            {
                filetype = "NvimTree";
                text = "File Explorer";
                highlight = "Directory";
                separator = true; 
            }
        ];
    };
}
