{ lib, config, ... }:

let
  colorscheme = config.theme.colorscheme;
in
{
  programs.kitty = {
    enable = true;
    settings = {
      shell = "zsh";
      cursor_shape = "beam";
      window_margin_width = "6 12";
      allow_remote_control = true;
      listen_on = "unix:/tmp/mykitty";
      window_border_width = 0;

      cursor_trail = 3;
      cursor_trail_start_threshold = 0;
      cursor_trail_decay = "0.1 0.4";

      background_opacity = lib.mkForce "0.8";

      background = colorscheme.black;
      foreground = colorscheme.white;

      color0 = colorscheme.darker-gray;
      color7 = colorscheme.lighter-gray;

      color8 = colorscheme.gray;
      color15 = colorscheme.white;

      color1 = colorscheme.red;
      color9 = colorscheme.light-red;

      color2 = colorscheme.green;
      color10 = colorscheme.light-green;

      color3 = colorscheme.yellow;
      color11 = colorscheme.light-yellow;

      color4 = colorscheme.purple;
      color12 = colorscheme.light-purple;

      color5 = colorscheme.pink;
      color13 = colorscheme.light-pink;

      color6 = colorscheme.cyan;
      color14 = colorscheme.light-cyan;
    };
  };
}
