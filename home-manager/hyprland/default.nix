{ lib, ... }:

{
  imports = [
    ./bind.nix
    ./windowrule.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;

    package = null;
    portalPackage = null;
    settings = {
      monitor = ",preferred,auto,auto";

      "$terminal" = "kitty";
      "$fileManager" = "nautilus";
      "$menu" = "rofi -show drun -modes \"drun,calc\"";
      "$unmute" = "amixer -c 1 sset \"Auto-Mute Mode\" Disabled & amixer -c 1 sset Front unmute";

      exec-once = [
        "$unmute"
        "waybar & vivaldi"
        "systemctl --user start hyprpolkitagent"
        "swww-daemon & swww img ~/dotfiles/images/wallpaper.png"
      ];

      env = [
        "XCURSOR_SIZE,24"
        "HYPRCURSOR_SIZE,28"

        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"

        "GDK_BACKEND,wayland,x11,*"

        "QT_QPA_PLATFORM,wayland;xcb"
        "QT_QPA_PLATFORMTHEME,qt6ct"
        "QT_AUTO_SCREEN_SCALE_FACTOR,1"
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 8;

        border_size = 2;

        "col.active_border" = lib.mkForce "rgb(000000)";
        "col.inactive_border" = lib.mkForce "rgb(c3c3c3)";

        resize_on_border = false;

        allow_tearing = false;

        layout = "dwindle";
      };

      decoration = {
        rounding_power = 2;

        active_opacity = 1.0;
        inactive_opacity = 1.0;

        shadow = {
            enabled = true;
            range = 2;
            render_power = 5;
            sharp = false;
            color = lib.mkForce "rgb(000000)";
            color_inactive = lib.mkForce "rgba(c3c3c300)";
            ignore_window = true;
            offset = "2 2";
            scale = 1;
        };
        
        blur = {
            enabled = true;
            size = 3;
            passes = 1;

            vibrancy = 0.1696;
        };
      };

      animations = {
        enabled = true;

        bezier = [
          "easeOutQuint,0.23,1,0.32,1"
          "easeInOutCubic,0.65,0.05,0.36,1"
          "linear,0,0,1,1"
          "almostLinear,0.5,0.5,0.75,1.0"
          "quick,0.15,0,0.1,1"
          "bounce,0.23,1,0.32,1.05"
        ];

        animation = [
          "global, 1, 10, default"
          "border, 1, 5.39, easeOutQuint"
          "windows, 1, 4.79, easeOutQuint"
          "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
          "windowsOut, 1, 1.49, linear, popin 87%"
          "fadeIn, 1, 1.73, almostLinear"
          "fadeOut, 1, 1.46, almostLinear"
          "fade, 1, 3.03, quick"
          "layers, 1, 3.81, easeOutQuint"
          "layersIn, 1, 4, easeOutQuint, fade"
          "layersOut, 1, 1.5, linear, fade"
          "fadeLayersIn, 1, 1.79, almostLinear"
          "fadeLayersOut, 1, 1.39, almostLinear"
          "workspaces, 1, 2.75, bounce"
          "workspacesIn, 1, 2.75, bounce"
          "workspacesOut, 1, 2.75, bounce"
        ];
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
      };

      misc = {
        force_default_wallpaper = -1;
        disable_hyprland_logo = true;
      };

      input = {
          kb_layout = "br";

          follow_mouse = 1;

          sensitivity = 0;

          numlock_by_default = true;
      };

      layerrule = ["noanim, selection"];
    };
  };
}
