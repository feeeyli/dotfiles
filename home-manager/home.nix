{ pkgs, ... }:

{
  imports = [
    ./waybar
    ./hyfetch
    ./kitty
    ./hyprland
    ./zsh
    ./dunst
    ./vscode
    ./rofi
    ./firefox
    ./zed-editor
    ./obsidian
    ./xdg
  ];

  home.username = "feyli";
  home.homeDirectory = "/home/feyli";

  home.packages = [

  ];

  programs = {
    git = {
      enable = true;
      userName = "feeeyli";
      userEmail = "lunafeyli@gmail.com";
    };
    gh = {
      enable = true;
      gitCredentialHelper = {
        enable = true;
      };
    };
    mpv = {
      enable = true;
    };
  };

  gtk = {
    enable = true;
    iconTheme = {
      package = pkgs.rose-pine-icon-theme;
      name = "rose-pine";
    };
  };

  home.stateVersion = "25.05";
}
