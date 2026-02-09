{
  config,
  lib,
  self,
  ...
}:

let
  homeDir = config.home.homeDirectory;
  quickshellDir = "${self}/machines/feylin/home/desktop/quickshell/qml";
  quickshellTarget = "${homeDir}/.config/quickshell";
in
{
  home.activation.symlinkQuickshellAndFaceIcon = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    ln -sfn "${quickshellDir}" "${quickshellTarget}"
  '';
}
