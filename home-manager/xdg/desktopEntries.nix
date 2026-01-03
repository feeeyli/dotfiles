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
    nix-config = {
      name = "Abrir Arquivos de Configuração";
      exec = "zeditor /home/feyli/dotfiles";
      icon = "settings";
      # icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
      genericName = "Configurações";
    };
    nix-rebuild = {
      name = "Rebuildar Sistema (switch)";
      exec = "kitty --hold sudo nixos-rebuild switch --flake /home/feyli/dotfiles";
      icon = "nix";
      # icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
      genericName = "Configurações";
    };
    # nix-rebuild-test = {
    #   name = "Rebuildar Sistema (test)";
    #   exec = "kitty sudo nixos-rebuild test --flake /home/feyli/dotfiles";
    #   icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
    #   genericName = "Configurações";
    # };
    update-roblox = {
      name = "Atualizar Roblox";
      exec = "kitty flatpak update --noninteractive";
      icon = "roblox-player";
    };
    shutdown = {
      name = "Desligar";
      genericName = "Power";
      exec = "systemctl poweroff";
      icon = "system-shutdown-panel";
    };
    reboot = {
      name = "Reiniciar";
      genericName = "Power";
      exec = "systemctl reboot";
      icon = "system-restart-panel";
    };
    # yazi = {
    #   name = "Yazi";
    #   icon = "org.gnome.files";
    # };
  };
}
