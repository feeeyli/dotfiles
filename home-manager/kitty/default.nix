{ ... }:

{
#  stylix.targets.kitty.enable = false;

  programs.kitty = {
    enable = true;
#    themeFile = "rose-pine";
    settings = {
      shell = "zsh";
      cursor_shape = "beam";
      cursor = "#e0def4";
    };
  };
}
