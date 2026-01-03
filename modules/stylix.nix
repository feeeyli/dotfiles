{ config, pkgs, ... }:

{
  stylix.enable = true;

  # stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/horizon-terminal-dark.yaml";
  # stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/unikitty-dark.yaml";

  stylix.base16Scheme = {
    base00 = "#140f0f";
    base01 = "#232530";
    base02 = "#2E303E";
    base03 = "#6F6F70";
    base04 = "#9DA0A2";
    base05 = "#CBCED0";
    base06 = "#DCDFE4";
    base07 = "#E3E6EE";
    # base08 = "#E95678";
    base08 = "#D20D1B";
    base09 = "#FAB795";
    base0A = "#FAC29A";
    base0B = "#29D398";
    base0C = "#59E1E3";
    base0D = "#26BBD9";
    base0E = "#EE64AC";
    base0F = "#F09383";
  };

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
      package = pkgs.noto-fonts-color-emoji;
      name = "Noto Color Emoji";
    };
  };
}
