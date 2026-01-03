{ pkgs, ... }:

{
  imports = [
    ./plugins/lualine.nix
    ./plugins/mini.nix
    ./plugins/alpha.nix
  ];

  programs.nvf.settings.vim = {
    telescope.enable = true;
    binds.whichKey.enable = true;
    autopairs.nvim-autopairs.enable = true;
    autocomplete.nvim-cmp.enable = true;
    snippets.luasnip.enable = true;
    tabline.nvimBufferline = {
      enable = true;
      mappings.cycleNext = "<leader><tab>";
      mappings.closeCurrent = "<leader>bq";
    };
    ui.nvim-highlight-colors.enable = true;
    # lsp.null-ls.enable = true;

    treesitter.autotagHtml = true;
    treesitter.grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      vue
      scss
    ];
    treesitter.mappings.incrementalSelection = {
      init = "<A-o>";
      incrementByNode = "<A-o>";
      incrementByScope = "<A-O>";
      decrementByNode = "<A-i>";
    };

    utility.yazi-nvim = {
      enable = true;
      mappings = {
        openYazi = "e";
      };
    };

    comments.comment-nvim = {
      enable = true;
      mappings = {
        toggleSelectedLine = "<C-c>";
      };
    };

    # utility.surround = {
    #   enable = true;
    # };

    highlight.Red.fg = "#D20D1B";

    visuals.fidget-nvim.enable = true;
    visuals.indent-blankline = {
      enable = false;
      setupOpts = {
        indent = {
          char = "┊";
          highlight = "Indent";
        };
        scope = {
          enabled = true;
          highlight = "IndentScope";
        };
      };
    };

    extraPlugins = with pkgs.vimPlugins; {
      ts-autotag = {
        package = nvim-ts-autotag;
        setup = "require('nvim-ts-autotag').setup()";
      };
      cheatsheet-nvim = {
        package = cheatsheet-nvim;
        setup = "require('cheatsheet').setup({
          bundled_cheatsheets = false,
          bundled_plugin_cheatsheets = false
        })";
      };
      tiny-inline-diagnostics = {
        package = tiny-inline-diagnostic-nvim;
        setup = "require('tiny-inline-diagnostic').setup({options = {multilines = {enabled = true, always_show = true, trim_whitespaces = true}}})";
      };
    };
  };
}
