{ lib, ... }:

{
  # stylix.targets.kitty.enable = false;
  stylix.targets.kitty.colors.enable = false;

  programs.kitty = {
    enable = true;
    #    themeFile = "rose-pine";
    settings = {
      shell = "zsh";
      cursor_shape = "beam";
      window_margin_width = "6 12";
      allow_remote_control = true;

      background_opacity = lib.mkForce "0.8";

      color0 = "#1d1d1d";
      # color1 = "#ed333b";
      # color2 = "#57e389";
      # color3 = "#ff7800";
      # color4 = "#62a0ea";
      # color5 = "#9141ac";
      # color6 = "#5bc8af";
      color7 = "#deddda";

      color8 = "#9a9996";
      # color9 = "#f66151";
      # color10 = "#8ff0a4";
      # color11 = "#ffa348";
      # color12 = "#99c1f1";
      # color13 = "#dc8add";
      # color14 = "#93ddc2";
      color15 = "#f6f5f4";

      # # black
      # color0 = "#21222c";
      # color8 = "#6272a4";

      # red
      color1 = "#ed333b";
      color9 = "#f66151";

      # green
      color2 = "#50fa7b";
      color10 = "#69ff94";

      # yellow
      color3 = "#f1fa8c";
      color11 = "#ffffa5";

      # blue
      color4 = "#bd93f9";
      color12 = "#d6acff";

      # magenta
      color5 = "#ff79c6";
      color13 = "#ff92df";

      # cyan
      color6 = "#8be9fd";
      color14 = "#a4ffff";

      # # white
      # color7 = "#f8f8f2";
      # color15 = "#ffffff";

      ## Theme

      # foreground = "#fffafa";
      # background = "#000000";
      # selection_foreground = "none";
      # selection_background = "#4F0610";

      # cursor = "#9e0c21";
      # cursor_text_color = "background";

      # url_color = "#9e0c21";

      # black
      # color0 = "#000000";
      # color8 = "#777777";

      # # red
      # color1 = "#9e0c21";
      # color9 = "#9e283d";

      # # green
      # color2 = "#829e36";
      # color10 = "#889e4c";

      # # yellow
      # color3 = "#c4a033";
      # color11 = "#c4a74f";

      # # blue
      # color4 = "#36429e";
      # color12 = "#4c7f9e";

      # # magenta
      # color5 = "#71369e";
      # color13 = "#6b4c9e";

      # # cyan
      # color6 = "#369e99";
      # color14 = "#4c9e8a";

      # # white
      # color7 = "#eeffff";
      # color15 = "#ffffff";
    };
  };
}
