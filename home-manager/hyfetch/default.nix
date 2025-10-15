{ ... }:

{
  programs.fastfetch = {
    enable = true;
    settings = {
      modules = [
        "break"
        "break"
        "title"
        "separator"
        "uptime"
        "os"
        "wm"
        "break"
        "shell"
        "terminal"
        "break"
        "board"
        "cpu"
        "gpu"
        "memory"
        "disk"
        "break"
        "colors"
      ];
    };
  };
  programs.hyfetch = {
    enable = true;
    settings = {
      preset = "transgender";
      mode = "rgb";
      light_dark = "dark";
      lightness = 0.81;
      color_align = {
          mode = "horizontal";
          custom_colors = [];
          fore_back = null;
      };
      backend = "fastfetch";
      args = null;
      distro = null;
      pride_month_shown = [];
      pride_month_disable = false;
    };
  };
}
