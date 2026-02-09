{ lib, ... }:

with lib;
let
  themeType = types.submodule {
    options = {
      colorscheme = mkOption {
        type = types.attrsOf types.str;
      };

      # polarity.light = mkOption {
      #   type = types.attrsOf types.str;
      # };
      #
      # polarity.dark = mkOption {
      #   type = types.attrsOf types.str;
      # };

      programs = mkOption {
        type = types.attrsOf (types.attrsOf types.anything);
      };

      wallpaperCmd = mkOption {
        type = types.str;
      };

      waybar = mkOption {
        type = types.path;
      };

      round = mkOption {
        type = types.float;
      };

      extra = mkOption {
        type = types.attrsOf types.anything;
      };
    };
  };
in
{

  options = {
    theme = mkOption {
      type = themeType;
      default = { };
    };

    themes = mkOption {
      type = types.attrsOf themeType;
    };
  };
}
