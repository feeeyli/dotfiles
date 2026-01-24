{ config, self, ... }:

{
  programs.niri.settings.binds = with config.lib.niri.actions; {
    "Mod+Q" = {
      repeat = false;
      action = spawn "kitty";
    };
    "Mod+Space" = {
      repeat = false;
      action = spawn "fuzzel";
    };
    "Mod+E" = {
      repeat = false;
      action = spawn "yazi";
    };

    "Mod+M" = {
      repeat = false;
      action.spawn = "~/dotfiles/home-manager/fuzzel/scripts/music-control.sh";
    };
    "Mod+N" = {
      repeat = false;
      action.spawn = "~/dotfiles/home-manager/fuzzel/scripts/notes.sh";
    };
    "Mod+U" = {
      repeat = false;
      action.spawn = "~/dotfiles/home-manager/fuzzel/scripts/menu.sh";
    };

    "Mod+O" = {
      repeat = false;
      action = toggle-overview;
    };

    "Mod+W" = {
      repeat = false;
      action = close-window;
    };

    "Mod+Up".action = focus-window-or-workspace-up;
    "Mod+Right".action = focus-column-right;
    "Mod+Down".action = focus-window-or-workspace-down;
    "Mod+Left".action = focus-column-left;

    "Mod+Shift+Left".action = move-column-left;
    "Mod+Shift+Right".action = move-column-right;

    "Mod+Shift+Down".action = move-window-to-workspace-down;
    "Mod+Shift+Up".action = move-window-to-workspace-up;

    "Mod+Shift+Page_Down".action = move-workspace-down;
    "Mod+Shift+Page_Up".action = move-workspace-up;

    "Mod+1".action = focus-workspace 1;
    "Mod+2".action = focus-workspace 2;
    "Mod+3".action = focus-workspace 3;
    "Mod+4".action = focus-workspace 4;
    "Mod+5".action = focus-workspace 5;
    "Mod+6".action = focus-workspace 6;
    "Mod+7".action = focus-workspace 7;
    "Mod+8".action = focus-workspace 8;
    "Mod+9".action = focus-workspace 9;

    "Mod+Shift+1".action.move-column-to-workspace = 1;
    "Mod+Shift+2".action.move-column-to-workspace = 2;
    "Mod+Shift+3".action.move-column-to-workspace = 3;
    "Mod+Shift+4".action.move-column-to-workspace = 4;
    "Mod+Shift+5".action.move-column-to-workspace = 5;
    "Mod+Shift+6".action.move-column-to-workspace = 6;
    "Mod+Shift+7".action.move-column-to-workspace = 7;
    "Mod+Shift+8".action.move-column-to-workspace = 8;
    "Mod+Shift+9".action.move-column-to-workspace = 9;

    "Mod+BracketLeft".action = set-column-width "-10%";
    "Mod+BracketRight".action = set-column-width "+10%";
    "Mod+Equal".action = switch-preset-column-width;

    "Mod+V".action = toggle-window-floating;

    "Print".action.screenshot = [ ];
    "Shift+Print".action.screenshot-screen = [ ];
    "Alt+Print".action.screenshot-window = [ ];
  };
}
