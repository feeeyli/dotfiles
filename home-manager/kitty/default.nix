{ lib, ... }:

{
  # stylix.targets.kitty.enable = false;

  programs.kitty = {
    enable = true;
    #    themeFile = "rose-pine";
    settings = {
      shell = "zsh";
      cursor_shape = "beam";
      window_margin_width = "6 12";
      allow_remote_control = true;

      background_opacity = lib.mkForce "0.8";

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
