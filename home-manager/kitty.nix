{ lib, ... }:

let
  theme = import ./themes/kitty.nix;
in
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
      listen_on = "unix:/tmp/mykitty";
      window_border_width = 0;

      cursor_trail = 3;
      cursor_trail_start_threshold = 0;
      cursor_trail_decay = "0.2 0.4";

      background_opacity = lib.mkForce "0.8";
      background = "#000000";
      foreground = "#fffaf8";

      inherit (theme) color0;
      inherit (theme) color7;

      inherit (theme) color8;
      inherit (theme) color15;

      inherit (theme) color1;
      inherit (theme) color9;

      inherit (theme) color2;
      inherit (theme) color10;

      inherit (theme) color3;
      inherit (theme) color11;

      inherit (theme) color4;
      inherit (theme) color12;

      inherit (theme) color5;
      inherit (theme) color13;

      inherit (theme) color6;
      inherit (theme) color14;
    };
  };
}
