{ lib, hmConfig, ... }:

let
  colors = hmConfig.theme.colorscheme;
  separators = hmConfig.theme.extra.separators;
in
{
  plugins.lualine = {
    enable = true;
    settings = {
      sections = {
        lualine_a = [ "mode" ];
        lualine_b = [
          {
            __unkeyed-1 = "filename";
            file_status = true;
            symbols = {
              modified = "";
              readonly = "";
              unnamed = "";
              newfile = "";
            };
          }
        ];
        lualine_c = lib.nixvim.mkRaw "{}";
        lualine_x = lib.nixvim.mkRaw "{}";
        lualine_y = [
          {
            __unkeyed-1 = "diagnostics";

            symbols = {
              error = "";
              hint = "";
              info = "";
              warn = "";
            };
            update_in_insert = true;
          }
          {
            __unkeyed-1 = "branch";
            icon = "";
          }
        ];
        lualine_z = [ "location" ];
      };

      inactive_sections = {
        lualine_c = [ "filename" ];
      };

      options = {

        component_separators = {
          left = "";
          right = "";
        };

        section_separators = separators;

        theme = {
          normal = {
            a = {
              bg = colors.primary;
              fg = colors.primary-foreground;
            };
            b = {
              bg = colors.darker-gray;
              fg = colors.light-gray;
            };
            c.bg = "none";
          };
          insert = {
            a = {
              bg = colors.green;
              fg = colors.dark-gray;
            };
          };
          visual = {
            a = {
              bg = colors.pink;
              fg = colors.dark-gray;
            };
          };
          command = {
            a = {
              bg = colors.orange;
              fg = colors.dark-gray;
            };
          };
        };
      };
    };
  };
}
