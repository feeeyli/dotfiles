{ config, lib, ... }:

let
  homeDir = config.home.homeDirectory;
  cavaDir = "${homeDir}/dotfiles/home-manager/cava/config_widget";
  cavaTarget = "${homeDir}/.config/cava/";
in
{
  programs.cava.enable = true;

  home.activation.symlinkCava = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    mkdir -p "${cavaTarget}"

    ln -sf "${cavaDir}" "${cavaTarget}"
  '';
}
