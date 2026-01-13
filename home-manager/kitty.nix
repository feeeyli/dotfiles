{ lib, ... }:

{
  # stylix.targets.kitty.enable = false;
  stylix.targets.kitty.colors.enable = false;

  programs.kitty = {
    enable = true;
    settings = {
      shell = "zsh";
      cursor_shape = "beam";
      window_margin_width = "6 12";
      allow_remote_control = true;

      background_opacity = lib.mkForce "0.8";
      background = "#000000";
      foreground = "#fffaf8";

      color0 = "#1d1d1d";
      color7 = "#deddda";

      color8 = "#9a9996";
      color15 = "#f6f5f4";

      color1 = "#D20D1B";
      color9 = "#ed333b";

      color2 = "#50fa7b";
      color10 = "#69ff94";

      color3 = "#f1fa8c";
      color11 = "#ffffa5";

      color4 = "#bd93f9";
      color12 = "#d6acff";

      color5 = "#ff79c6";
      color13 = "#ff92df";

      color6 = "#8be9fd";
      color14 = "#a4ffff";
    };
  };
}
