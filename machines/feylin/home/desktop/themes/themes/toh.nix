{ self, ... }:

{
  themes.toh = rec {
    colorscheme = {
      black = "#000010";

      darker-gray = "#1d1d1d";
      dark-gray = "#4a464d";
      gray = "#838085";
      light-gray = "#9f9da2";
      lighter-gray = "#d8d7da";

      white = "#f5f4f7";

      red = "#bf393b";
      light-red = "#cf5c5e";

      orange = "#eea326";
      light-orange = "#f2b755";

      yellow = "#e8c44e";
      light-yellow = "#eed37b";

      green = "#3bab86";
      light-green = "#55c49f";

      cyan = "#6ea5c0";
      light-cyan = "#92bbcf";

      blue = "#4f6a92";
      light-blue = "#6783ad";

      pink = "#da70d6";
      light-pink = "#e499e2";

      purple = "#6E67B1";
      light-purple = "#8e89c2";

      darker-primary = "#0d0c17";
      dark-primary = "#383465";
      primary = "#6E67B1";
      light-primary = "#bebbdc";
      lighter-primary = "#f2f1f8";

      primary-foreground = colorscheme.white;

      background = colorscheme.lighter-gray;
      foreground = colorscheme.black;
    };

    programs = {
      qutebrowser = {
        completion = {
          odd = colorscheme.lighter-gray;
          even = colorscheme.white;
        };
      };
    };

    wallpaperCmd = ''mpvpaper -o "--panscan=1 --window-maximized=yes --loop-file --hwdec=auto" all ${self}/machines/feylin/home/desktop/themes/assets/toh-wallpaper.mp4 -l background'';

    waybar = ./.;

    round = 8.0;

    extra = {
      separators.left = "";
      separators.right = "";
    };
  };
}
