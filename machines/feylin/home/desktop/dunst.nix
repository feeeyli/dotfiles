{ config, ... }:

let
  colors = config.theme.colorscheme;
in
{
  services.dunst = {
    enable = true;

    settings = {
      global = {
        font = "monospace 11";
        corner_radius = 4;
        gap_size = 4;
        frame_color = colors.primary;
        frame_width = 2;
      };

      urgency_normal = {
        background = "${colors.background}cc";
        foreground = colors.foreground;
      };
    };
  };
}
