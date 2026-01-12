{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";

    quickshell = {
      url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";

      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/hyprland/v0.52.1-b";

    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins/v0.52.0";
      inputs.hyprland.follows = "hyprland";
    };

    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    niri-flake = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      stylix,
      nix-flatpak,
      nixpkgs-unstable,
      quickshell,
      nur,
      ...
    }@inputs:
    let
      pkgs-unstable = import nixpkgs-unstable {
        system = "x86_64-linux";
        config.allowUnfree = true;
      };
    in
    {

      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          nix-flatpak.nixosModules.nix-flatpak

          stylix.nixosModules.stylix

          nur.modules.nixos.default

          ./configuration.nix
          ./hardware-configuration.nix
          ./modules/flatpak.nix
          ./modules/stylix.nix

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;

              extraSpecialArgs = {
                inherit inputs;
                inherit pkgs-unstable;
              };

              users.feyli = import ./home-manager/home.nix;

              backupFileExtension = "hm-backup";
            };
          }

          (
            { pkgs, ... }:
            {
              environment.systemPackages = [
                (quickshell.packages.${pkgs.stdenv.hostPlatform.system}.default.override {
                  withJemalloc = true;
                  withQtSvg = true;
                  withWayland = true;
                  withX11 = false;
                  withPipewire = true;
                  withPam = true;
                  withHyprland = true;
                  withI3 = false;
                })
              ];
            }
          )
        ];
      };

    };
}
