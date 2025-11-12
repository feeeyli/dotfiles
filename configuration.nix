{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/stylix.nix
  ];

  security.polkit.enable = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";

  networking.networkmanager.enable = true;

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "pt_BR.UTF-8";

  i18n.extraLocaleSettings = {
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

  services.xserver.xkb = {
    layout = "br";
    variant = "";
  };

  console.keyMap = "br-abnt2";

  users.users.feyli = {
    isNormalUser = true;
    description = "feyli";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = [ ];
    shell = pkgs.zsh;
  };

  services.getty.autologinUser = "feyli";

  services.gvfs.enable = true;
  services.udisks2.enable = true;

  services.flatpak.enable = true;

  nixpkgs.config.allowUnfree = true;

  programs = {
    hyprland.enable = true;
    zsh.enable = true;
    steam.enable = true;
    adb.enable = true;
    nh = {
      enable = true;
      clean.enable = true;
      clean.extraArgs = "--keep 3";
      flake = "/home/feyli/dotfiles";
    };
  };

  environment.systemPackages = with pkgs; [
    alsa-utils
    android-studio
    bun
    fastfetch
    gdu
    gedit
    gh
    git
    grim
    hyprpicker
    hyprpolkitagent
    libresprite
    micro
    nautilus
    nemo
    nil
    nix-output-monitor
    nixd
    nixfmt-rfc-style
    nodejs_24
    obs-studio
    obsidian
    prismlauncher
    qbittorrent
    qview
    slurp
    swww
    wine
    wl-clipboard
    yazi
  ];

  system.stateVersion = "25.05";
}
