{
  plugins.lsp = {
    enable = true;
  
    servers = {
      tsserver.enable = true;
      gopls.enable = true;
      nixd.enable = true;
      lua-ls = {
        enable = true;
        settings.telemetry.enable = false;
      };
    };
  };
}
