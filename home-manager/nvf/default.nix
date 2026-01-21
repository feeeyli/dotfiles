{
  inputs,
  pkgs,
  ...
}:
{
  imports = [
    inputs.nvf.homeManagerModules.default
    ./keymaps.nix
    ./theme.nix
    ./plugins
    ./languages
  ];

  stylix.targets.nvf.enable = false;

  home.file.".config/nvf/cheatsheet.txt".source = ./cheatsheet.txt;

  programs.nvf = {
    enable = true;

    settings.vim = {
      theme = {
        enable = true;
        name = "base16";
        base16-colors = {
          base00 = "#2e2a31";
          base01 = "#4a464d";
          base02 = "#666369";
          base03 = "#838085";
          base04 = "#9f9da2";
          base05 = "#bcbabe";
          base06 = "#d8d7da";
          base07 = "#f5f4f7";
          base08 = "#ff5555";
          base09 = "#ffb86c";
          base0A = "#f1fa8c";
          base0B = "#50fa7b";
          base0C = "#8be9fd";
          base0D = "#80bfff";
          base0E = "#ff79c6";
          base0F = "#bd93f9";
        };
      };

      extraPackages = with pkgs; [
        vue-language-server
        vtsls
        sass
      ];

      options = {
        tabstop = 2;
        shiftwidth = 2;
        autoindent = true;
        wrap = false;
        scrolloff = 5;
        showmode = false;
      };

      searchCase = "smart";

      ui.borders.enable = true;
      ui.borders.plugins.nvim-cmp.enable = true;

      undoFile.enable = true;
      withNodeJs = true;
    };
  };
}
