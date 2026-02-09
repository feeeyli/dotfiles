{
  plugins.blink-cmp = {
    enable = true;
    settings = {
      sources = {
        default = [
          "lsp"
          "path"
          # "luasnip"
          "buffer"
          "emoji"
        ];
        providers = {
          emoji = {
            module = "blink-emoji";
            name = "Emoji";
            score_offset = 15;
            opts = {
              insert = true;
            };
          };
          css-vars = {
            module = "css-vars.blink";
            name = "css-vars";
            opts = {
              insert = true;
            };
          };
        };
      };

      signature = {
        # enabled = true;
        window.border = "rounded";
      };

      completion = {
        menu.border = "rounded";
        # menu.auto_show = false;
        trigger.show_on_trigger_character = true;
        documentation.window.border = "rounded";
        list.selection = {
          preselect = false;
          auto_insert = false;
        };
      };

      keymap = {
        preset = "none";

        "<C-space>" = [
          "show"
          "show_documentation"
          "hide_documentation"
        ];
        "<Esc>" = [
          # "<C-e>" = [
          "hide"
          "fallback"
        ];
        "<CR>" = [
          "accept"
          "fallback"
        ];

        "<S-Right>" = [
          "snippet_forward"
          "fallback"
        ];
        "<S-Left>" = [
          "snippet_backward"
          "fallback"
        ];

        "<S-Tab>" = [
          "select_prev"
          "fallback"
        ];
        "<Tab>" = [
          "select_next"
          "fallback"
        ];

        "<C-b>" = [
          "scroll_documentation_up"
          "fallback"
        ];
        "<C-f>" = [
          "scroll_documentation_down"
          "fallback"
        ];

        "<C-k>" = [
          "show_signature"
          "hide_signature"
          "fallback"
        ];
      };
    };
  };

  plugins.blink-emoji.enable = true;
}
