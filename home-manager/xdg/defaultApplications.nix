{ pkgs, ... }:

{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "image" = [ "${pkgs.qview}" ];
      "video" = [ "${pkgs.mpv}" ];
    };
  };
}
