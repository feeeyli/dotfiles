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
  red = "#D20D1B";

  boldFont = "Bold 12px default_family";
in
{
  stylix.targets.qutebrowser.enable = false;

  programs.qutebrowser = {
    enable = true;
    enableDefaultBindings = false;

    keyBindings = {
      normal = {
        "<Shift-Left>" = "back";
        "<Shift-Right>" = "forward";
        "<Shift-Up>" = "tab-next";
        "<Shift-Down>" = "tab-prev";

        "+" = "zoom-in";
        "-" = "zoom-out";
        "0" = "zoom";

        "f" = "hint";
        "F" = "hint all tab";
        "I" = "hint inputs";

        "<Alt-m>" = "tab-mute";
        "gg" = "scroll-to-perc 0";
        "ge" = "scroll-to-perc";
        "i" = "mode-enter insert";
        "n" = "search-next";
        "N" = "search-prev";

        "<Escape>" = "clear-keychain ;; search ;; fullscreen --leave";
        "R" = "reload -f";
        "r" = "reload";
        "d" = "tab-close";

        "/" = "cmd-set-text /";
        ":" = "cmd-set-text :";
        "o" = "cmd-set-text -s :open";
        "W" = "cmd-set-text -s :open -w";
        "O" = "cmd-set-text -s :open -t";
        "e" = "cmd-set-text :open {url:query}";
        "E" = "cmd-set-text :open {url:pretty}";

        "u" = "undo";

        "P" = "tab-pin";
      };
      insert = {
        "<Escape>" = "mode-leave";
      };
      hint = {
        "<Escape>" = "mode-leave";
        "<Return>" = "hint-follow";
      };
      command = {
        "<Alt-Backspace>" = "rl-backward-kill-word";
        "<Down>" = "completion-item-focus --history next";
        "<Up>" = "completion-item-focus --history prev";
        "<Escape>" = "mode-leave";
        "<Return>" = "command-accept";
        "<Tab>" = "completion-item-focus next";
      };
      prompt = {
        "<Alt-B>" = "rl-backward-word";
        "<Alt-Backspace>" = "rl-backward-kill-word";
        "<Alt-D>" = "rl-kill-word";
        "<Alt-E>" = "prompt-fileselect-external";
        "<Alt-F>" = "rl-forward-word";
        "<Alt-Shift-Y>" = "prompt-yank --sel";
        "<Alt-Y>" = "prompt-yank";
        "<Ctrl-?>" = "rl-delete-char";
        "<Ctrl-A>" = "rl-beginning-of-line";
        "<Ctrl-B>" = "rl-backward-char";
        "<Ctrl-E>" = "rl-end-of-line";
        "<Ctrl-F>" = "rl-forward-char";
        "<Ctrl-H>" = "rl-backward-delete-char";
        "<Ctrl-K>" = "rl-kill-line";
        "<Ctrl-P>" = "prompt-open-download --pdfjs";
        "<Ctrl-Shift-W>" = "rl-filename-rubout";
        "<Ctrl-U>" = "rl-unix-line-discard";
        "<Ctrl-W>" = "rl-rubout ' '";
        "<Ctrl-X>" = "prompt-open-download";
        "<Ctrl-Y>" = "rl-yank";
        "<Down>" = "prompt-item-focus next";
        "<Escape>" = "mode-leave";
        "<Return>" = "prompt-accept";
        "<Shift-Tab>" = "prompt-item-focus prev";
        "<Tab>" = "prompt-item-focus next";
        "<Up>" = "prompt-item-focus prev";
      };
      yesno = {
        "<Alt-Shift-Y>" = "prompt-yank --sel";
        "<Alt-Y>" = "prompt-yank";
        "<Escape>" = "mode-leave";
        "<Return>" = "prompt-accept";
        "N" = "prompt-accept --save no";
        "Y" = "prompt-accept --save yes";
        "n" = "prompt-accept no";
        "y" = "prompt-accept yes";
      };
    };

    settings = {
      fonts = {
        default_family = "monospace";
        default_size = "12px";

        tabs.selected = boldFont;
        tabs.unselected = boldFont;
        statusbar = boldFont;
      };

      tabs = {
      };

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
          "progress"
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
              bg = red;
              fg = foreground;
            };
            even = {
              bg = red;
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
          bg = red;
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
            bg = red;

            border = {
              top = red;
              bottom = red;
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

          progress.bg = red;

          url = {
            fg = foreground;
            hover.fg = color "0E";
            success.http.fg = red;
            success.https.fg = red;
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
      # (pkgs.writeTextFile {
      #   name = "improved-twitter.js";
      #   text = builtins.readFile ./scripts/
      # })
      # (pkgs.fetchurl {
      #   url = "https://update.greasyfork.org/scripts/488224/Control%20Panel%20for%20YouTube.user.js";
      #   sha256 = "sha256-67YxR4SrDIJhJ2JEAnki6720sdMoETrNrghDzFoPLyg=";
      #   postFetch = ''
      #     patch -Np1 $out ${self}/home-manager/qutebrowser/scripts/patches/control-panel-for-youtube.patch
      #   '';
      # })
    ];

    extraConfig = ''
      c.statusbar.padding = { "top": 4, "bottom": 4, "left": 6, "right": 6 }
      c.tabs.padding = { "top": 6, "bottom": 6, "left": 8, "right": 8 }

      config.set("content.headers.user_agent", "Mozilla/5.0 ({os_info}; rv:135.0) Gecko/20100101 Firefox/135", "https://accounts.google.com/*")
    '';
  };
}
