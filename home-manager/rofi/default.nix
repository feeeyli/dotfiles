{ pkgs, lib, config, ... }:

let
  inherit (config.lib.formats.rasi) mkLiteral;
in
{
  programs.rofi = lib.mkForce {
    enable = true;

    font = "Noto Sans Bold 11";

    location = "center";
    cycle = true;

    terminal = "kitty";

    theme = ./theme.rasi;
  };
}
