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
      "<leader>fg" = {
        action =  "live_grep";
        desc = "Telescope Live Grep";
      };
    };
  };
}
