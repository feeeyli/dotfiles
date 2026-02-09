{
  pkgs,
  inputs,
  self,
  ...
}:

{
  # imports = [
  #   (import ../../../pkgs/iriun.nix { inherit pkgs; })
  # ];

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
      flake = "${self}";
    };
    localsend.enable = true;
    obs-studio = {
      enable = true;
      enableVirtualCamera = true;
      plugins = with pkgs.obs-studio-plugins; [
        droidcam-obs
      ];
    };
    nix-ld = {
      enable = true;

# Some note about the packages that use the dynamic linking by default:
# - sass-embedded
#   https://discourse.nixos.org/t/web-development-with-sveltekit-sass-embedded/52474
#   https://github.com/sass/embedded-host-node/issues/334
      libraries = [
        pkgs.glibc
        pkgs.libcxx
      ];
    };
  };


  environment.systemPackages = with pkgs; [
    # linuxKernel.packages.linux_zen.v4l2loopback
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
    nixd
    pastel
    (inputs.quickshell.packages.${pkgs.stdenv.hostPlatform.system}.default.override {
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
