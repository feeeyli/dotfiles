{ pkgs, lib, ... }:

{
  services.displayManager = {
    enable = true;
    ly = {
      enable = true;

      settings = {
        tty = lib.mkForce 2;
        bigclock = "en";
        numlock = true;
      };
    };
  };

  # systemd.services."getty@" = {
  #   description = "Keep numlock on in console mode";
  #   serviceConfig = {
  #     ExecStartPre = "/bin/sh -c '${pkgs.kbd}/bin/setleds -D +num < /dev/%I'";
  #   };
  # };
  #
  # services.getty = {
  #   greetingLine = ''.° Welcome to LunarNix 25.11 - \l .°'';
  #   loginOptions = "-p -- feyli";
  #   extraArgs = [
  #     "--skip-login"
  #     "--noclear"
  #   ];
  # };
  #
  # documentation.doc.enable = false;
}
