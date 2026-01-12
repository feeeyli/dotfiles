{ ... }:

{
  stylix.targets.qutebrowser.enable = false;

  programs.qutebrowser = {
    enable = true;
    searchEngines = {
      nx = "https://mynixos.com/search?q={}";
      np = "https://search.nixos.org/packages?query={}";
    };
  };
}
