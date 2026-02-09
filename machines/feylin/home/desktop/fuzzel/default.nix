{ pkgs, config, ... }:

let
  colors = config.theme.colorscheme;
in
{
  programs.fuzzel = {
    enable = true;

    settings = {
      main = {
        terminal = "${pkgs.kitty}/bin/kitty";
        prompt = "' '";
        icons-enabled = false;
        enable-mouse = false;
        font = "monospace:weight=bold:size=11";

        horizontal-pad = 12;
        vertical-pad = 12;

        anchor = "top";
        y-margin = 6;
        x-margin = 6;
      };

      colors = {
        background = "${colors.background}cc";
        text = "${colors.foreground}ff";
        prompt = "${colors.primary}ff";
        placeholder = "${colors.gray}ff";
        input = "${colors.foreground}ff";
        match = "${colors.primary}ff";
        selection = "${colors.primary}40";
        selection-text = "${colors.foreground}ff";
        selection-match = "${colors.primary}ff";
        border = "${colors.primary}ff";
      };

      border = {
        width = 2;
        radius = config.theme.round;
      };
    };
  };
}
