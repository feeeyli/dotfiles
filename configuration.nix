{ pkgs, ... }:
{
  # imports = [
  #   ./hardware-configuration.nix
  #   ./modules/stylix.nix
  # ];

  security.polkit.enable = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
  };

  time.timeZone = "America/Sao_Paulo";

  i18n = {
    defaultLocale = "pt_BR.UTF-8";

    extraLocaleSettings = {
      LC_ADDRESS = "pt_BR.UTF-8";
      LC_IDENTIFICATION = "pt_BR.UTF-8";
      LC_MEASUREMENT = "pt_BR.UTF-8";
      LC_MONETARY = "pt_BR.UTF-8";
      LC_NAME = "pt_BR.UTF-8";
      LC_NUMERIC = "pt_BR.UTF-8";
      LC_PAPER = "pt_BR.UTF-8";
      LC_TELEPHONE = "pt_BR.UTF-8";
      LC_TIME = "pt_BR.UTF-8";
    };
  };

  console.keyMap = "br-abnt2";

  users.users.feyli = {
    isNormalUser = true;
    description = "feyli";
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
    ];
    packages = [ ];
    shell = pkgs.zsh;
  };

  services = {
    xserver.xkb = {
      layout = "br";
      variant = "";
    };

    getty.autologinUser = "feyli";

    gvfs.enable = true;
    udisks2.enable = true;

    flatpak.enable = true;
  };

  networking = {
    hostName = "nixos";

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

  nixpkgs.config.allowUnfree = true;

  virtualisation.docker.enable = true;

  programs = {
    hyprland.enable = true;
    niri.enable = true;
    zsh.enable = true;
    steam.enable = true;
    adb.enable = true;
    nh = {
      enable = true;
      clean.enable = true;
      clean.extraArgs = "--keep 3";
      flake = "/home/feyli/dotfiles";
    };
    localsend.enable = true;
  };

  environment.systemPackages = with pkgs; [
    alsa-utils
    fastfetch
    feh
    ffmpeg
    gdu
    gedit
    gh
    git
    nautilus
    nemo
    pavucontrol
    polkit_gnome
    qview
    slurp
    wget
    wl-clipboard
    libnotify
  ];

  system.stateVersion = "25.05";
}
