{ pkgs, ... }:

{
  imports = [
    ./qutebrowser
    ./rmpc
    ./xdg
    ./fastfetch.nix
    ./firefox.nix
    ./yazi.nix
  ];

  home.packages = with pkgs; [
    libresprite
    mpvpaper
    # obs-studio
    obsidian
    (prismlauncher.override {
      jdks = [
        jdk8
        jdk17
        jdk21
        jdk25
      ];
    })
    qbittorrent
    vesktop
    mpd-discord-rpc
    dorion
    goofcord
    wine
    xwayland-satellite
    calcure
    wiremix
    zapzap
    tray-tui
    btop
    zathura
  ];

  programs = {
    mpv.enable = true;
  };
}
