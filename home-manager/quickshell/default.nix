{ config, lib, ... }:

let
  homeDir = config.home.homeDirectory;
  quickshellDir = "${homeDir}/dotfiles/home-manager/quickshell/qml";
  quickshellTarget = "${homeDir}/.config/quickshell";
in
{
  home.activation.symlinkQuickshellAndFaceIcon = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    ln -sfn "${quickshellDir}" "${quickshellTarget}"
  '';
}
