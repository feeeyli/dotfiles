{ config, ... }:

let
  colorscheme = config.theme.colorscheme;
in
{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 40;

        modules-left = [
          "wireplumber"
          "custom/cava"
        ];

        modules-center = [
          "niri/workspaces"
        ];

        modules-right = [
          "memory"
          "cpu"
          "clock"
        ];

        wireplumber = {
          format = "{volume}% {icon}";
          format-icons = [
            ""
            ""
            ""
          ];
        };

        "custom/cava" = {
          format = "{}";
          exec = "$HOME/dotfiles/machines/feylin/home/desktop/waybar/cava.sh";
          return-type = "string";
          # on-click = "rhythmbox-client --play-pause";
          # on-click-right = "hyprctl dispatch workspace 10";
          # on-scroll-up = "wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 3%+";
          # on-scroll-down = "wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 3%-";
        };

        clock = {
          format = "{:%H:%M %d %b}";
        };

        memory = {
          format = "{used} GiB ";
        };

        cpu = {
          format = "{usage}% ";
        };

        cava = {
          framerate = 30;
          autosens = 1;
          bars = 25;
          method = "pipewire";
          source = "auto";
          bar_delimiter = 0;

          # framerate = 60;
          # autosens = 1;
          # sensitivity = 100;
          # bars = 25;
          # lower_cutoff_freq = 50;
          # higher_cutoff_freq = 10000;
          # hide_on_silence = false;
          # method = "pipewire";
          # source = "auto";
          # stereo = true;
          # reverse = false;
          # bar_delimiter = 10;
          # monstercat = false;
          # waves = false;
          # noise_reduction = 0.77;
          # input_delay = 2;
          format-icons = [
            "▁"
            "▂"
            "▃"
            "▄"
            "▅"
            "▆"
            "▇"
            "█"
          ];
        };
      };
    };
  };

  home.file.".config/waybar/colors.css".text = ''
    @define-color black ${colorscheme.black};

    @define-color darker-gray ${colorscheme.darker-gray};
    @define-color dark-gray ${colorscheme.dark-gray};
    @define-color gray ${colorscheme.gray};
    @define-color light-gray ${colorscheme.light-gray};
    @define-color lighter-gray ${colorscheme.lighter-gray};

    @define-color white ${colorscheme.white};

    @define-color red ${colorscheme.red};
    @define-color light-red ${colorscheme.light-red};

    @define-color orange ${colorscheme.orange};
    @define-color light-orange ${colorscheme.light-orange};

    @define-color yellow ${colorscheme.yellow};
    @define-color light-yellow ${colorscheme.light-yellow};

    @define-color green ${colorscheme.green};
    @define-color light-green ${colorscheme.light-green};

    @define-color cyan ${colorscheme.cyan};
    @define-color light-cyan ${colorscheme.light-cyan};

    @define-color blue ${colorscheme.blue};
    @define-color light-blue ${colorscheme.light-blue};

    @define-color pink ${colorscheme.pink};
    @define-color light-pink ${colorscheme.light-pink};

    @define-color purple ${colorscheme.purple};
    @define-color light-purple ${colorscheme.light-purple};

    @define-color darker-primary ${colorscheme.darker-primary};
    @define-color dark-primary ${colorscheme.dark-primary};
    @define-color primary ${colorscheme.primary};
    @define-color light-primary ${colorscheme.light-primary};
    @define-color lighter-primary ${colorscheme.lighter-primary};
  '';
}
