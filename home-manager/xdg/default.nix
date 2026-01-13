{ ... }:

{
  imports = [
    ./defaultApplications.nix
    ./desktopEntries.nix
  ];

  xdg.terminal-exec = {
    enable = true;
    settings = {
      default = [
        "kitty.desktop"
      ];
    };
  };
}
