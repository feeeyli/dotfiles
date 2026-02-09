{ ... }:

{
  programs.distrobox = {
    enable = true;
    settings = {
      PATH = "$PATH:/home/feyli/.local/bin";
    };
    containers = {
      arch = {
        image = "docker.io/library/archlinux:latest";
        additional_packages = "git fastfetch zoxide";
        init_hook = "fastfetch";
      };
    };
  };
}
