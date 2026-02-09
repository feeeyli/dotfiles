{ self, ... }:

{
  themes.hexatombe = rec {
    colorscheme = {
      black = "#100000";

      darker-gray = "#1d1d1d";
      dark-gray = "#4a464d";
      gray = "#838085";
      light-gray = "#9f9da2";
      lighter-gray = "#d8d7da";

      white = "#f5f4f7";

      red = "#D20D1B";
      light-red = "#ed333b";

      orange = "#ffb86c";
      light-orange = "#ffb86c";

      yellow = "#f1fa8c";
      light-yellow = "#ffffa5";

      green = "#50fa7b";
      light-green = "#69ff94";

      cyan = "#8be9fd";
      light-cyan = "#a4ffff";

      blue = "#80bfff";
      light-blue = "#80bfff";

      pink = "#ff79c6";
      light-pink = "#ff92df";

      purple = "#bd93f9";
      light-purple = "#d6acff";

      darker-primary = "#180203";
      dark-primary = "#60060c";
      primary = "#d20d1b";
      light-primary = "#f66f78";
      lighter-primary = "#fde7e9";

      primary-foreground = colorscheme.white;

      background = colorscheme.black;
      foreground = colorscheme.darker-gray;
    };

    programs = {
      qutebrowser = {
        completion = {
          odd = colorscheme.dark-gray;
          even = colorscheme.darker-gray;
        };
      };
    };

    wallpaperCmd = ''mpvpaper -o "--panscan=1 --window-maximized=yes --loop-file --hwdec=auto" all ${self}/machines/feylin/home/desktop/themes/assets/hexatombe-wallpaper.mp4 -l background'';

    waybar = ./.;

    round = 4.0;

    extra = {
      separators.left = "";
      separators.right = "";
    };
  };
}
