{ pkgs, ... }:

{
  imports = [
    ./kitty
    ./zsh
    ./dunst
    ./rofi
    ./firefox
    ./obsidian
    ./xdg
    ./quickshell
    ./cava
    ./yazi
    ./nvim
    ./niri
    ./fastfetch
    ./distrobox
  ];

  home = {
    username = "feyli";
    homeDirectory = "/home/feyli";

    packages = with pkgs; [
      xwayland-satellite
    ];

    shell.enableZshIntegration = true;
  };

  programs = {
    git = {
      enable = true;
      settings = {
        user = {
          name = "feeeyli";
          email = "lunafeyli@gmail.com";
        };
      };
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
    direnv = {
      enable = true;
      nix-direnv.enable = true;
      enableZshIntegration = true;
    };
    zoxide = {
      enable = true;
      options = [ "--cmd cd" ];
    };
    eza = {
      enable = true;
      colors = "always";
      icons = "always";
    };
  };

  gtk = {
    enable = true;
    iconTheme = {
      name = "besgnulinux-mono-red";
    };
  };

  home.stateVersion = "25.05";
}
