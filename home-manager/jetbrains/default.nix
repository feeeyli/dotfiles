{ pkgs-unstable, ... }:

{
  programs.jetbrains-remote = {
    enable = true;
    ides = with pkgs-unstable.jetbrains; [ webstorm ];
  };

  home.packages = with pkgs-unstable; [
    jetbrains.webstorm
  ];
}
