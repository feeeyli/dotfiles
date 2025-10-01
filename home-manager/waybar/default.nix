{ lib, ... }:

{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        height = 32;
        modules-center = ["hyprland/workspaces" "clock"];

        "hyprland/workspaces" = {
          format = "{icon}";
          persistent-workspaces = {
            "*" = 5;
          };
        };

        clock = {
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
          format = "{:%I:%M - %d/%m}";
        };
      };
    };

    style = lib.mkForce ./style.css;
  };
}