{ pkgs, inputs, ... }:

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
    ./quickshell
    ./cava
    ./helix
    ./yazi
    ./jetbrains
    ./nvim
    inputs.zen-browser.homeModules.beta
  ];

  home.username = "feyli";
  home.homeDirectory = "/home/feyli";

  home.packages = with pkgs; [
    biome
    xwayland-satellite
  ];

  home.shell.enableZshIntegration = true;

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
    zen-browser = {
      enable = true;
      profiles.default = {
        search.engines = {
          "Nix Packages" = {
            urls = [
              {
                template = "https://search.nixos.org/packages";
                params = [
                  {
                    name = "type";
                    value = "packages";
                  }
                  {
                    name = "query";
                    value = "{searchTerms}";
                  }
                ];
              }
            ];

            icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
            definedAliases = [ "@np" ];
          };

          "MyNixOs" = {
            urls = [
              {
                template = "https://mynixos.com/search";
                params = [
                  {
                    name = "q";
                    value = "{searchTerms}";
                  }
                ];
              }
            ];

            icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
            definedAliases = [ "@nx" ];
          };

          bing.metaData.hidden = true;
          ddg.metaData.hidden = true;
          perplexity.metaData.hidden = true;
          wikipedia.metaData.hidden = true;
        };
        search.force = true;
        extensions.packages = with inputs.firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [
          ublock-origin
          stylus
        ];
      };
    };
  };

  gtk = {
    enable = true;
    iconTheme = {
      name = "besgnulinux-mono-red";
    };
    # iconTheme = {
    #   package = pkgs.vimix-icon-theme;
    #   name = "Vimix-ruby";
    # };
  };

  wayland.windowManager.labwc = {
    enable = true;
    # autostart = [ "flex-launcher" ];
    autostart = [ "steam -bigpicture" ];
  };

  home.stateVersion = "25.05";
}
