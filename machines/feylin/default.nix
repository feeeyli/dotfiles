{
  pkgs,
  pkgs-unstable,
  self,
  inputs,
  ...
}:

{
  imports = [
    inputs.nix-flatpak.nixosModules.nix-flatpak
    inputs.nur.modules.nixos.default
    inputs.home-manager.nixosModules.home-manager

    {
      home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;

        users.feyli = import ./home;

        extraSpecialArgs = {
          inherit
            inputs
            self
            pkgs-unstable
            ;
        };

        backupFileExtension = "hm-backup";
      };
    }

    ./system
  ];

  services.keyd = {
    enable = true;
    keyboards = {
      default = {
        ids = [ "*" ];
        settings = {
          main = {
            capslock = "esc";
            esc = "capslock";
          };
        };
      };
    };
  };

  security.polkit.enable = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nix.nixPath = [ "nixpkgs=${pkgs.path}" ];

  users.users.feyli = {
    isNormalUser = true;
    description = "feyli";
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
      "seat"
    ];
    packages = [ ];
    shell = pkgs.zsh;
  };

  services = {
    gvfs.enable = true;
    udisks2.enable = true;
    pipewire = {
      enable = true;
      wireplumber.enable = true;
      alsa.enable = true;
      systemWide = true;
    };
  };

  systemd.services.mpd.serviceConfig.SupplementaryGroups = [ "pipewire" ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.05";
  virtualisation.docker.enable = true;
}
