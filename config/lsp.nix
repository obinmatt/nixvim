{
  config.plugins.lsp = {
    enable = true;

    keymaps = {
      silent = true;
      lspBuf = {
        "K" = "hover";
        "gr" = "references";
        "gd" = "definition";
        "gi" = "implementation";
        "gt" = "type_definition";
      };
      diagnostic = {
        "[d" = "goto_next";
        "]d" = "goto_prev";
      };
    };

    servers = {
      tsserver.enable = true;
      nil_ls.enable = true;
      gopls.enable = true;
    };
  };
}