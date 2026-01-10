{ config, ... }:

{
  stylix.targets.yazi.colors.enable = false;

  programs.yazi = {
    enable = true;

    settings = {
      mgr = {
        show_hidden = true;
      };

      opener = {
        edit = [
          {
            run = "${config.programs.helix.package}/bin/hx $@";
            block = true;
          }
        ];
      };
    };
  };
}
