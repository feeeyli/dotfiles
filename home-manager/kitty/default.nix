{ ... }:

{
  stylix.targets.kitty.enable = false;

  programs.kitty = {
    enable = true;
    themeFile = "rose-pine";
    settings = {
      background_opacity = 0.85;
      shell = "zsh";
      cursor_shape = "beam";
      cursor = "#e0def4";
    };
  };
}