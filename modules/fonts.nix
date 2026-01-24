{ pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      noto-fonts
      nerd-fonts.jetbrains-mono
      noto-fonts-color-emoji
    ];

    fontconfig.defaultFonts = {
      sansSerif = [ "Noto Sans" ];
      monospace = [ "JetBrainsMono Nerd Font Mono" ];
      serif = [ "Noto Serif" ];
      emoji = [ "Noto Color Emoji" ];
    };
  };
}
