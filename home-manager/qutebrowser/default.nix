{
  config,
  pkgs,
  self,
  ...
}:

let
  colors = config.programs.nvf.settings.vim.theme.base16-colors;
  color = hx: colors."base${hx}";

  background = color "00";
  foreground = color "07";
in
{
  stylix.targets.qutebrowser.enable = false;

  programs.qutebrowser = {
    enable = true;

    keyBindings = {
      normal = {
        "<Shift-Left>" = "back";
        "<Shift-Right>" = "forward";
        "<Shift-Up>" = "tab-next";
        "<Shift-Down>" = "tab-prev";
      };
    };

    settings = {
      fonts.default_family = "JetBrainsMono Nerd Font Mono SemiBold";

      hints = {
        border = "0px";
        radius = 0;
      };

      statusbar = {
        show = "always";
        widgets = [
          "keypress"
          "search_match"
          "url"
          "history"
        ];
      };

      fileselect = {
        handler = "external";
        multiple_files.command = [
          "kitty"
          "-e"
          "yazi"
          "--chooser-file={}"
        ];
        single_file.command = [
          "kitty"
          "-e"
          "yazi"
          "--chooser-file={}"
        ];
      };

      content.pdfjs = true;

      url = {
        default_page = "about:blank";
        start_pages = "about:blank";
      };

      colors = {
        tabs = {
          odd = {
            bg = background;
            fg = foreground;
          };
          even = {
            bg = background;
            fg = foreground;
          };
          selected = {
            odd = {
              bg = color "08";
              fg = foreground;
            };
            even = {
              bg = color "08";
              fg = foreground;
            };
          };
          indicator = {
            error = color "0A";
            start = color "0C";
            stop = color "0B";
          };
        };

        hints = {
          bg = color "08";
          fg = foreground;
          match.fg = color "0B";
        };

        completion = {
          category = {
            bg = background;
            fg = foreground;
            border = {
              top = background;
              bottom = foreground;
            };
          };

          odd.bg = color "01";
          even.bg = color "00";

          fg = [
            foreground
            (color "09")
            foreground
          ];

          match.fg = color "0C";

          item.selected = {
            bg = color "08";

            border = {
              top = color "08";
              bottom = color "08";
            };

            fg = color "07";
            match.fg = color "00";
          };
        };

        statusbar = {
          command = {
            bg = background;
            fg = foreground;
            private = {
              bg = color "0F";
              fg = color "00";
            };
          };

          insert = {
            bg = background;
            fg = color "0B";
          };

          normal = {
            bg = background;
            fg = foreground;
          };

          # passthrough = {
          #   bg = color "statusbar.passthrough.bg";
          #   fg = color "statusbar.passthrough.fg";
          # };

          private = {
            bg = color "0F";
            fg = color "00";
          };

          progress.bg = color "08";

          url = {
            fg = foreground;
            hover.fg = color "0E";
            success.http.fg = color "08";
            success.https.fg = color "08";
            warn.fg = color "0A";
            error.fg = color "09";
          };
        };

        # messages = {
        #   info = {
        #     bg = color "statusbar.bg";
        #     fg = color "statusbar.fg";
        #     border = color "statusbar.bg";
        #   };
        #
        #   error = {
        #     bg = color "messages.error.bg";
        #     fg = color "messages.error.fg";
        #     border = color "messages.error.bg";
        #   };
        # };
      };
    };

    searchEngines = {
      "DEFAULT" = "https://google.com/search?q={}";
      nx = "https://mynixos.com/search?q={}";
      np = "https://search.nixos.org/packages?query={}";
      ghx = "https://github.com/search?q=lang%3Anix+{}&type=code";
    };

    greasemonkey = [
      (pkgs.fetchurl {
        url = "https://update.greasyfork.org/scripts/387773/Control%20Panel%20for%20Twitter.user.js";
        sha256 = "sha256-/oEznOH09JIy3Z+lIpizlXw6xRwQ3lb8sGwxvhEJPmo=";
        postFetch = ''
          patch -Np1 $out ${self}/home-manager/qutebrowser/scripts/patches/control-panel-for-twitter.patch
        '';
      })
      (pkgs.fetchurl {
        url = "https://update.greasyfork.org/scripts/488224/Control%20Panel%20for%20YouTube.user.js";
        sha256 = "sha256-67YxR4SrDIJhJ2JEAnki6720sdMoETrNrghDzFoPLyg=";
        postFetch = ''
          patch -Np1 $out ${self}/home-manager/qutebrowser/scripts/patches/control-panel-for-youtube.patch
        '';
      })
    ];

    extraConfig = ''
      c.statusbar.padding = { "top": 2, "bottom": 2, "left": 8, "right": 8 }
      c.tabs.padding = { "top": 2, "bottom": 2, "left": 8, "right": 8 }

      config.set("content.headers.user_agent", "Mozilla/5.0 ({os_info}; rv:135.0) Gecko/20100101 Firefox/135", "https://accounts.google.com/*")
    '';
  };
}
