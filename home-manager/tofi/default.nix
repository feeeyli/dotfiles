{ ... }:

{
  # stylix.targets.tofi.enable = false;

  programs.tofi = {
    enable = true;
    settings = {
      hide-cursor = true;
      fuzzy-match = true;
      terminal = "kitty";

      border-width = 2;
      border-color = "#d20d1b";
      font = "monospace";
      background-color = "#1d1d1dcc";
      corner-radius = 4;
    };
  };
}
