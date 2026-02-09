{ pkgs, ... }:

{
  imports = [
    ./boot.nix
    ./flatpak.nix
    ./getty.nix
    ./hardware.nix
    ./localization.nix
    ./network.nix
    ./programs.nix
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    nerd-fonts.jetbrains-mono
    nerd-fonts.gohufont
    noto-fonts-color-emoji
  ];

  swapDevices = [
    {
      device = "/swapfile";
      size = 8 * 1024;
    }
  ];
}
