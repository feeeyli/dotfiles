{ ... }:

{
  networking = {
    hostName = "feylin";

    networkmanager.enable = true;

    firewall = {
      enable = true;
      allowedTCPPorts = [
        5173
        8000
        3000
      ];
    };
  };
}
