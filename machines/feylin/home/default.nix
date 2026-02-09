{ ... }:

{
  imports = [
    ./desktop
    ./dev
    ./other
    ../../../modules
  ];

  home = {
    username = "feyli";
    homeDirectory = "/home/feyli";

    shell.enableZshIntegration = true;
  };

  home.stateVersion = "25.05";

  settings = {
    theme = "toh";
  };
}
