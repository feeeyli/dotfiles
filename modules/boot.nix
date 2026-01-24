{ lib, ... }:

{
  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    loader.timeout = 1;
    kernelParams = [ "quiet" ];
  };

  systemd.services.docker.serviceConfig = {
    Restart = lib.mkOverride 500 "on-failure";
    RestartSec = "5s";
  };

  systemd.services.NetworkManager-wait-online.wantedBy = lib.mkOverride 500 [ ];

  services.journald.extraConfig = "SystemMaxUse=50M";
}
