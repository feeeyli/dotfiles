{ lib, ... }:

with lib;
{
  options.settings = {
    wm = mkOption {
      type = types.enum [
        "niri"
        "hyprland"
      ];
    };
    theme = mkOption {
      type = types.enum [
        "hexatombe"
        "toh"
      ];
    };
  };
}
