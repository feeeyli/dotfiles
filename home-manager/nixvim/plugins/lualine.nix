{ lib, ... }:

let
  colors = import ../../themes/nvim.nix;
  color = hx: colors."base${hx}";
  red = (import ../../themes/kitty.nix).color1;
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

        section_separators = {
          left = "";
          right = "";
        };

        theme = {
          normal = {
            a = {
              bg = red;
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
          };
          visual = {
            a = {
              bg = color "0E";
              fg = color "01";
            };
          };
          command = {
            a = {
              bg = color "09";
              fg = color "01";
            };
          };
        };
      };
    };
  };
}
