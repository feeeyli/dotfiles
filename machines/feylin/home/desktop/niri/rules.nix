{ config, ... }:

let
  corner-radius = config.theme.round;
in
{
  programs.niri.settings = {
    window-rules = [
      {
        geometry-corner-radius = {
          bottom-left = corner-radius;
          bottom-right = corner-radius;
          top-left = corner-radius;
          top-right = corner-radius;
        };
        clip-to-geometry = true;
      }
      {
        matches = [
          { app-id = ".Dorion-wrapped"; }
          { app-id = "goofcord"; }
          { app-id = "vesktop"; }
        ];
        # block-out-from = "screencast";
        # opacity = 0.95;
        draw-border-with-background = false;
      }
    ];

    layer-rules = [
      {
        matches = [ { namespace = "^mpvpaper$"; } ];
        place-within-backdrop = true;
      }
    ];
  };
}
