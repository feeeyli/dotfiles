{ config, ... }:

{
  imports = [
    ./themes/hexatombe.nix
    ./themes/toh.nix
  ];

  fonts = {
    fontconfig.defaultFonts = {
      sansSerif = [ "Noto Sans" ];
      monospace = [ "JetBrainsMono Nerd Font Mono" ];
      serif = [ "Noto Serif" ];
      emoji = [ "Noto Color Emoji" ];
    };
  };

  theme = config.themes.${config.settings.theme};
}
