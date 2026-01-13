{ config, pkgs, ... }:

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

    plugins = with pkgs.yaziPlugins; {
      inherit mount;
      inherit (pkgs.nur.repos.Vortriz.yaziPlugins) gvfs;
      inherit (pkgs.nur.repos.xyenon.yaziPlugins) exifaudio;
    };
  };
}
