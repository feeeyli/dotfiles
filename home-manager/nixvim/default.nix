{ inputs, ... }:

{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];

  stylix.targets.nixvim.enable = false;

  home.file.".config/nvim/cheatsheet.txt".source = ./cheatsheet.txt;

  programs.nixvim.imports = [
    ./keymaps.nix
    ./options.nix
    ./plugins
    ./theme.nix
    ./highlights
    ./lsp
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
  };
}
