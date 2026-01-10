{ inputs, ... }:

{
  imports = [
    inputs.niri-flake.homeModules.config
    ./binds.nix
    ./rules.nix
  ];

  programs.niri = {
    settings = {
      hotkey-overlay.skip-at-startup = true;

      input = {
        keyboard = {
          xkb = {
            layout = "br";
            options = "caps:swapescape";
          };

          numlock = true;
        };

        focus-follows-mouse.enable = true;
      };

      layout = {
        gaps = 8;

        center-focused-column = "never";

        preset-column-widths = [
          { proportion = 1.0; }
        ];

        default-column-width.proportion = 1.0;

        focus-ring = {
          width = 2;
          active.color = "#D20D1B";
          inactive.color = "#100000";
        };

        background-color = "transparent";

        insert-hint.display.color = "#D20D1B80";
      };

      spawn-at-startup = [
        { sh = ''amixer -c 1 sset "Auto-Mute Mode" Disabled & amixer -c 1 sset Front unmute''; }
        { sh = ''mpvpaper -o "--panscan=1 --window-maximized=yes --loop-file" all ~/wallpaper.mp4''; }
        { argv = [ "qs" ]; }
        { argv = [ "firefox" ]; }
      ];

      prefer-no-csd = true;
    };
  };
}
