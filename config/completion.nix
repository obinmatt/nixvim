{
  config.plugins = {
    # Snippet Engine & its associated nvim-cmp source
    luasnip.enable = true;
    cmp_luasnip.enable = true;

    # Adds LSP completion capabilities
    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-spell.enable = true;
    cmp-path.enable = true;

    # Adds a number of user-friendly snippets
    friendly-snippets.enable = true;

    # Completion
    nvim-cmp = {
      enable = true;
      snippet = { expand = "luasnip"; };
      mapping = {
        "<C-n>" = "cmp.mapping.select_next_item()";
        "<C-p>" = "cmp.mapping.select_prev_item()";
        "<C-Space>" = "cmp.mapping.complete {}";
        "<CR>" = "cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Replace, select = true, }";
        "<Tab>" = {
          action = ''
            function(fallback)
              local luasnip = require 'luasnip'
              if cmp.visible() then
                cmp.select_next_item()
              elseif luasnip.expandable() then
                luasnip.expand();
              elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
              else
                fallback()
              end
            end
          '';
          modes = [ "i" "s" ];
        };
        "<S-Tab>" = {
          action = ''
            function(fallback)
              local luasnip = require 'luasnip'
              if cmp.visible() then
                cmp.select_prev_item()
              elseif luasnip.jumpable(-1) then
                luasnip.jump(-1);
              else
                fallback()
              end
            end
          '';
          modes = [ "i" "s" ];
        };
      };
      sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "buffer"; }
        { name = "spell"; }
        { name = "path"; }
      ];
    };
  };
}