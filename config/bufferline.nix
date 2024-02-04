{
    config.plugins.bufferline = {
        enable = true;

        diagnostics = "nvim_lsp";
        numbers = "buffer_id";
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
