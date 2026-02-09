{ pkgs, config, ... }:

let
  separators = config.theme.extra.separators;
in
{
  programs.yazi = {
    enable = true;

    settings = {
      mgr = {
        show_hidden = true;
      };

      opener = {
        edit = [
          {
            run = "${pkgs.neovim-unwrapped}/bin/nvim $@";
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

    theme = {
      indicator = {
        padding = {
          close = "█${separators.left}";
          open = "${separators.right}█";
        };
      };
    };
  };
}
