{ self, ... }:

{
  services.mpd = {
    enable = true;
    musicDirectory = "~/music";
    network.listenAddress = "/tmp/mpd_socket";
  };

  programs.rmpc = {
    enable = true;

    config = builtins.readFile ./config.ron;
  };
}
