{ ... }:

{
  wayland.windowManager.hyprland.settings.windowrule = [
    "suppressevent maximize, class:.*"
    "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
    
#    "pin,title:(Picture-in-picture)|(Picture in picture)"
    "tile,title:(Picture-in-picture)|(Picture in picture)"
    "nomaxsize,title:(Picture-in-picture)|(Picture in picture)"
    "keepaspectratio,title:(Picture-in-picture)|(Picture in picture)"
    "roundingpower 0,title:(Picture-in-picture)|(Picture in picture)"
#    "move 0 100%-w-0,title:(Picture-in-picture)|(Picture in picture)"

    "float,class:org.gnome.FileRoller"

    "stayfocused,class:jetbrains-idea-ce,floating:1"
    
    "rounding 45,title:(Android Emulator - Pixel_9:5554)"
    "roundingpower 3,title:(Android Emulator - Pixel_9:5554)"

    "opacity 0.95,class:kitty"
    "opacity 0.95,class:Code"
    "opacity 0.95,class:org.gnome.Nautilus"
  ];
}
