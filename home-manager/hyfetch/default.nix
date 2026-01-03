{ ... }:

{
  programs.fastfetch = {
    enable = true;
    settings = {
      display = {
        separator = " : ";
      };
      modules = [
        "break"
        {
          type = "os";
          format = "{2}";
          key = " OS";
          keyColor = "red";
        }
        {
          type = "wm";
          format = "{1}";
          key = " WM";
          keyColor = "red";
        }
        {
          type = "media";
          format = "{1} - {3}";
          key = "󰝚 Music";
          keyColor = "red";
        }
        {
          type = "uptime";
          key = " Uptime";
          keyColor = "red";
        }
        {
          type = "custom";
          format = "󰊤 GitHub : feeeyli";
          keyColor = "red";
          outputColor = "#f2afc0";
        }
        "break"
        {
          type = "cpu";
          format = "{1}";
          key = " CPU";
          keyColor = "red";
        }
        {
          type = "gpu";
          format = "{2}";
          key = " GPU";
          keyColor = "red";
        }
        {
          type = "memory";
          format = "{1} / {2}";
          key = " Memory";
          keyColor = "red";
        }
      ];
      logo = {
        source = "$HOME/sangue-small.txt";
        padding = {
          top = 1;
          right = 4;
        };
        color = {
          "1" = "red";
        };
      };
    };
  };
  # programs.hyfetch = {
  #   enable = true;
  #   settings = {
  #     preset = "transgender";
  #     mode = "rgb";
  #     light_dark = "dark";
  #     lightness = 0.81;
  #     color_align = {
  #         mode = "horizontal";
  #         custom_colors = [];
  #         fore_back = null;
  #     };
  #     backend = "fastfetch";
  #     args = null;
  #     distro = null;
  #     pride_month_shown = [];
  #     pride_month_disable = false;
  #   };
  # };
}
