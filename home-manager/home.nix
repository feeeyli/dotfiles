{ pkgs, lib, ... }:

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
    ./tofi
    ./qutebrowser
    ./rmpc
  ];

  home = {
    username = "feyli";
    homeDirectory = "/home/feyli";

    packages = with pkgs; [
      grim
      hyprpicker
      hyprpolkitagent
      kdePackages.qtdeclarative
      libresprite
      mpvpaper
      obs-studio
      obsidian
      oh-my-posh
      prismlauncher
      qbittorrent
      vesktop
      wine
      xwayland-satellite
      fd

      # pkgs-unstable.jetbrains.idea
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
    fzf = {
      enable = true;
      enableZshIntegration = true;
      colors = lib.mkForce {
        "bg+" = "#1d1d1d";
        pointer = "#ed333b";
        prompt = "#ed333b";
      };
    };
    bat = {
      enable = true;
      themes = {
        catppuccin = {
          src = pkgs.fetchFromGitHub {
            owner = "catppuccin";
            repo = "bat";
            rev = "d2bbee4f7e7d5bac63c054e4d8eca57954b31471";
            sha256 = "sha256-x1yqPCWuoBSx/cI94eA+AWwhiSA42cLNUOFJl7qjhmw=";
          };
          file = "themes/Catppuccin Frappe.tmTheme";
        };
      };
      config.theme = lib.mkForce "catppuccin";
    };
  };

  # gtk = {
  #   enable = true;
  #   iconTheme = {
  #     name = "besgnulinux-mono-red";
  #   };
  # };

  home.stateVersion = "25.05";
}
