{
  config.plugins = {
    lsp-format = {
      enable = true;
      lspServersToEnable = [
        "nil_ls"
        "gopls"
      ];
    };

    none-ls = {
      enable = true;
      enableLspFormat = true;
      sources.formatting.prettier = {
        enable = true;
        disableTsServerFormatter = true;
      };
    };
  };
}