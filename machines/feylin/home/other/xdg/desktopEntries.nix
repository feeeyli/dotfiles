{ pkgs, ... }:

{
  xdg.desktopEntries = {
    kitty = {
      noDisplay = true;
      name = "kitty";
    };
    kvantummanager = {
      noDisplay = true;
      name = "kvantummanager";
    };
    qt5ct = {
      noDisplay = true;
      name = "qt5ct";
    };
    qt6ct = {
      noDisplay = true;
      name = "qt6ct";
    };
    rofi = {
      noDisplay = true;
      name = "rofi";
    };
    rofi-theme-selector = {
      noDisplay = true;
      name = "rofi-theme-selector";
    };
    nixos-help = {
      noDisplay = true;
      name = "nixos-help";
    };
    nvim = {
      noDisplay = true;
      name = "nvim";
    };
    micro = {
      noDisplay = true;
      name = "micro";
    };
    nemo = {
      name = "nemo";
      genericName = "Nemo";
    };
    nautilus = {
      name = "nautilus";
      genericName = "Nautilus";
    };
    update-roblox = {
      name = "Atualizar Roblox";
      exec = "kitty flatpak update --noninteractive";
      icon = "${pkgs.colloid-icon-theme}/share/icons/Colloid/apps/scalable/roblox.svg";
    };
    shutdown = {
      name = "Desligar";
      genericName = "Power";
      exec = "systemctl poweroff";
      icon = "${pkgs.colloid-icon-theme}/share/icons/Colloid/apps/scalable/shutdown.svg";
    };
    reboot = {
      name = "Reiniciar";
      genericName = "Power";
      exec = "systemctl reboot";
      icon = "${pkgs.colloid-icon-theme}/share/icons/Colloid/apps/scalable/reboot.svg";
    };
  };
}
