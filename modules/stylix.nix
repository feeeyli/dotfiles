{ config, pkgs, ... }:

{
  stylix.enable = true;

  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine-dawn.yaml";

  # stylix.base16Scheme = {
  #   base00 = "#d8d8d8";
  #   base01 = "#9893a5";
  #   base02 = "#9893a5";
  #   base03 = "#6c6c6c";
  #   base04 = "#ececec";
  #   base05 = "#000000";
  #   base06 = "#575279";
  #   base07 = "#575279";
  #   base08 = "#ff4040";
  #   base09 = "#ffa043";
  #   base0A = "#ffa043";
  #   base0B = "#2ea62e";
  #   base0C = "#77baac";
  #   base0D = "#6dbbff";
  #   base0E = "#a96bff";
  #   base0F = "#eb5c2d";
  # };

  stylix.cursor = {
    package = pkgs.rose-pine-cursor;
    name = "BreezeX-RosePineDawn-Linux";
    size = 16;
  };

  stylix.image = pkgs.fetchurl {
    url = "https://imgur.com/Vn3Ipv9.png";
    hash = "sha256-xh/CxPUepRxkjFXvw/r3JTIji502+Sbat+pSBOS+N54=";
  };

  stylix.fonts = {
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
      package = pkgs.noto-fonts-emoji;
      name = "Noto Color Emoji";
    };
  };
}
