{ pkgs, ... }:

{
  # stylix.targets.fuzzel.enable = false;

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
        background = "#000000cc";
        text = "#fffaf8ff";
        prompt = "#d20d1bff";
        placeholder = "#9a9996ff";
        input = "#fffaf8ff";
        match = "#d20d1bff";
        selection = "#d20d1b40";
        selection-text = "#fffaf8ff";
        selection-match = "#d20d1bff";
        border = "#d20d1bff";
      };

      border = {
        width = 2;
        radius = 4;
      };
    };
  };
}
