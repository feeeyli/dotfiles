{ pkgs, ... }:

{
  imports = [
    ./dunst.nix
    ./fuzzel
    ./hyprland
    ./niri
    ./quickshell
    ./themes
    ./waybar
  ];

  home.packages = with pkgs; [
    grim
    hyprpicker
    hyprpolkitagent
    kdePackages.qtdeclarative
  ];

  programs = {
    cava.enable = true;
  };
}
