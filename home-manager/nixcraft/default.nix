{ inputs, ... }:

{
  imports = [
    inputs.nixcraft.homeModules.default
  ];

  nixcraft = {
    enable = true;

    server.instances = { };

    client = {
      shared = {
        account = {
          username = "feeeyli";
          offline = false;
        };

        # binEntry.enable = true;
        #
        # desktopEntry = {
        #   enable = true;
        # };
      };

      instances = {
        latest = {
          enable = true;
          version = "latest-snapshot";

          # desktopEntry = {
          #   enable = true;
          # };
        };
      };
    };
  };
}
