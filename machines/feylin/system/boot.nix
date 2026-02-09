{ lib, config, ... }:

{
  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    loader.timeout = 1;
    kernelParams = [
      "quiet"
      "nowatchdog"
    ];
    kernelModules = [
      "v4l2loopback"
      "snd-aloop"
    ];
    # extraModulePackages = [ pkgs.linuxKernel.packages.linux_zen.v4l2loopback ];
    extraModulePackages = with config.boot.kernelPackages; [ v4l2loopback.out ];
    # extraModprobeConfig = ''
    #   options v4l2loopback exclusive_caps=1 card_label="Virtual Camera"
    # '';
  };

  systemd.services.docker.serviceConfig = {
    Restart = lib.mkOverride 500 "on-failure";
    RestartSec = "5s";
  };

  systemd.services.NetworkManager-wait-online.wantedBy = lib.mkOverride 500 [ ];

  services.journald.extraConfig = "SystemMaxUse=50M";
}
