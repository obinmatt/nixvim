{
  config.plugins ={
    lsp-format.enable = true;

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