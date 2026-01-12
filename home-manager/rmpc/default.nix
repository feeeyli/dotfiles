{ ... }:

{
  services.mpd = {
    enable = true;
    musicDirectory = "~/music";
  };

  programs.rmpc = {
    enable = true;
  };
}
