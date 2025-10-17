{ ... }:

{
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "SUPER";

    "$powerMenu" = "rofi -show p -modi p:'rofi-power-menu --symbols-font \"Symbols Nerd Font Mono\" --choices=shutdown/reboot' -font \"JetBrains Mono NF 16\" -theme Paper -theme-str 'window {width: 8em;} listview {lines: 2;}'";
    "$printArea" = "(grim -g \"$(slurp)\" - | wl-copy); dunstify \"Print (área) copiada para a área de transferência\"";
    "$printScreen" = "(grim - | wl-copy); dunstify \"Print (tela) copiada para a área de transferência\"";
    "$pickColor" = "(hyprpicker | wl-copy); dunstify \"Cor copiada para a área de transferência\"";

    bind = [
      "$mainMod, Q, exec, $terminal"
      "$mainMod, E, exec, $fileManager"
      "$mainMod, SPACE, exec, $menu"
      "$mainMod, C, exec, rofi -show calc -modi calc -no-show-match -no-sort"

      "$mainMod, W, killactive,"
      "$mainMod, J, togglefloating,"
      "$mainMod, P, pseudo,"
      "$mainMod, ALT_L, togglesplit,"
      
      "$mainMod, F, resizeactive, exact 1440 810"
      "$mainMod, F, setfloating,"
      "$mainMod, F, centerwindow,"

      "$mainMod, K, exec, $unmute"
      "$mainMod, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy"
      "$mainMod, M, exec, $powerMenu"
      
      "$mainMod, left, movefocus, l"
      "$mainMod, right, movefocus, r"
      "$mainMod, up, movefocus, u"
      "$mainMod, down, movefocus, d"

      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"

      "$mainMod SHIFT, 1, movetoworkspace, 1"
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"
      "$mainMod SHIFT, 5, movetoworkspace, 5"
      "$mainMod SHIFT, 6, movetoworkspace, 6"
      "$mainMod SHIFT, 7, movetoworkspace, 7"
      "$mainMod SHIFT, 8, movetoworkspace, 8"
      "$mainMod SHIFT, 9, movetoworkspace, 9"
      "$mainMod SHIFT, 0, movetoworkspace, 10"

      "$mainMod CONTROL, left, workspace, -1"
      "$mainMod CONTROL, right, workspace, +1"
      
      ", PRINT, exec, $printArea"
      "SHIFT, PRINT, exec, $printScreen"
      "$mainMod SHIFT, P, exec, $pickColor"

      "$mainMod, Escape, exec, pkill waybar && waybar"
      "$mainMod SHIFT, A, exec, kitty flatpak update --noninteractive"
    ];

    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
      "$mainMod CONTROL, mouse:273, resizewindow 2"
    ];
  };
}
