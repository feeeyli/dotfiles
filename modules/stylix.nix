{ pkgs, ... }:

{
  stylix = {
    enable = true;
    autoEnable = false;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/unikitty-light.yaml";

    cursor = {
      package = pkgs.rose-pine-cursor;
      name = "BreezeX-RosePineDawn-Linux";
      size = 16;
    };

    # image = pkgs.fetchurl {
    #   url = "https://imgur.com/Vn3Ipv9.png";
    #   hash = "sha256-xh/CxPUepRxkjFXvw/r3JTIji502+Sbat+pSBOS+N54=";
    # };

    fonts = {
      sizes = {
        applications = 11;
        desktop = 11;
        popups = 11;
        terminal = 11;
      };

      serif = {
        package = pkgs.noto-fonts;
        name = "Noto Serif";
      };

      sansSerif = {
        package = pkgs.noto-fonts;
        name = "Noto Sans";
      };

      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font Mono";
      };

      emoji = {
        package = pkgs.noto-fonts-color-emoji;
        name = "Noto Color Emoji";
      };
    };

    icons = {
      enable = true;
      package = pkgs.colloid-icon-theme.override { colorVariants = [ "red" ]; };
      light = "Colloid-Red";
    };
  };
}
