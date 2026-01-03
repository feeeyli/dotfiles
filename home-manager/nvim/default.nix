{
  inputs,
  pkgs,
  ...
}:
{
  imports = [
    inputs.nvf.homeManagerModules.default
    ./keymaps.nix
    ./plugins.nix
    ./theme.nix
    ./languages
  ];

  home.file.".config/nvf/cheatsheet.txt".source = ./cheatsheet.txt;

  programs.nvf = {
    enable = true;

    settings.vim = {
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
      };

      searchCase = "smart";

      ui.borders.enable = true;

      undoFile.enable = true;
      withNodeJs = true;
    };
  };
}
