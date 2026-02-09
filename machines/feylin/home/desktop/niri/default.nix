{
  inputs,
  config,
  ...
}:

let
  colors = config.theme.colorscheme;
  wallpaperCmd = config.theme.wallpaperCmd;
in
{
  imports = [
    inputs.niri-flake.homeModules.niri
    ./rules.nix
    ./binds.nix
  ];

  programs.niri = {
    enable = true;

    settings = {
      hotkey-overlay.skip-at-startup = true;

      input = {
        keyboard = {
          xkb = {
            layout = "br";
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
          { proportion = 0.7; }
          { proportion = 0.5; }
          { proportion = 0.3; }
        ];

        default-column-width.proportion = 1.0;

        focus-ring = {
          width = 2;
          active.color = colors.primary;
          inactive.color = "#100000";
        };

        background-color = "transparent";

        insert-hint.display.color = "${colors.primary}80";
      };

      spawn-at-startup = [
        { argv = [ "~/dotfiles/machines/feylin/scripts/unmute.sh" ]; }
        { sh = wallpaperCmd; }
        { argv = [ "waybar" ]; }
        { argv = [ "qutebrowser" ]; }
        { argv = [ "dunst" ]; }
        { argv = [ "kitty" ]; }
      ];

      prefer-no-csd = true;
    };
  };
}
