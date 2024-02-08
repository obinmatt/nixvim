{
    config.plugins.bufferline = {
        enable = true;

        diagnostics = "nvim_lsp";
        separatorStyle = "slant";
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
