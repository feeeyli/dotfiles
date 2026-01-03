{ config, ... }:

let
  colors = config.lib.stylix.colors;
  color = hx: "#${colors."base${hx}"}";
in
{
  programs.nvf.settings.vim.statusline.lualine = {
    enable = true;
    componentSeparator = {
      left = "";
      right = "";
    };
    sectionSeparator = {
      left = "";
      right = "";
    };
    globalStatus = false;
    setupOpts.options.theme = {
      normal = {
        a = {
          bg = color "08";
          fg = color "05";
        };
        b = {
          bg = color "02";
          fg = color "05";
        };
        c = {
          bg = color "01";
          fg = color "03";
        };
      };
      insert = {
        a = {
          bg = color "0B";
          fg = color "01";
        };
        b = {
          bg = color "02";
          fg = color "01";
        };
        c = {
          bg = color "01";
          fg = color "03";
        };
      };
      visual = {
        a = {
          bg = color "0E";
          fg = color "01";
        };
        b = {
          bg = color "02";
          fg = color "05";
        };
        c = {
          bg = color "01";
          fg = color "03";
        };
      };
      command = {
        a = {
          bg = color "09";
          fg = color "01";
        };
        b = {
          bg = color "02";
          fg = color "05";
        };
        c = {
          bg = color "01";
          fg = color "03";
        };
      };
    };
    activeSection = {
      a = [ ''{ "mode" }'' ];
      b = [ ];
      c = [ ];
      x = [ ];
      y = [ ''{ "branch", icon = '', }'' ];
      z = [ ''{ "location" }'' ];
    };
    inactiveSection = {
      a = [ ];
      b = [ ];
      c = [ ];
      x = [ ];
      y = [ ];
      z = [ ];
    };
  };
}
