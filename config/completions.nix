{
  config.plugins = {
    luasnip.enable = true;
    cmp_luasnip.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;

    nvim-cmp = {
      enable = true;
      snippet = { 
        expand = "luasnip";
      };
      completion = {
        completeopt = "menu,menuone,noinsert";
      };
      mapping = {
        "<C-n>" = "cmp.mapping.select_next_item()";
	"<C-p>" = "cmp.mapping.select_prev_item()";
	"<C-b>" = "cmp.mapping.scroll_docs(-4)";
	"<C-f>" = "cmp.mapping.scroll_docs(4)";
	"<C-Space>" = "cmp.mapping.complete {}";
	"<CR>" = "cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Replace, select = true, }";
	"<Tab>" = {
 	  action = ''
	    function(fallback)
	      local luasnip = require 'luasnip'
              if cmp.visible() then
                cmp.select_next_item()
              elseif luasnip.expand_or_locally_jumpable() then
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
              elseif luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
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
	{ name = "path"; }
      ];
    };
  };
}
