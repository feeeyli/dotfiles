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
          bg = color "01";
          fg = color "05";
        };
        c.bg = "none";
      };
      insert = {
        a = {
          bg = color "0B";
          fg = color "01";
        };
        # b = {
        #   bg = color "02";
        #   fg = color "01";
        # };
      };
      visual = {
        a = {
          bg = color "0E";
          fg = color "01";
        };
        # b = {
        #   bg = color "02";
        #   fg = color "05";
        # };
      };
      command = {
        a = {
          bg = color "09";
          fg = color "01";
        };
        # b = {
        #   bg = color "02";
        #   fg = color "05";
        # };
      };
    };
    activeSection = {
      a = [ ''{ "mode" }'' ];
      b = [
        ''{ "filename", file_status = true, symbols = {modified = '',readonly = '',unnamed = '',newfile = ''}}''
      ];
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
