{ hmConfig, ... }:

let
  colorscheme = hmConfig.theme.colorscheme;
in
{
  colorschemes.base16 = {
    enable = true;

    colorscheme = {
      base00 = "#2e2a31";
      base01 = "#4a464d";
      base02 = "#666369";
      base03 = "#838085";
      base04 = "#9f9da2";
      base05 = "#bcbabe";
      base06 = "#d8d7da";
      base07 = "#f5f4f7";
      base08 = colorscheme.red;
      base09 = colorscheme.orange;
      base0A = colorscheme.yellow;
      base0B = colorscheme.green;
      base0C = colorscheme.cyan;
      base0D = colorscheme.blue;
      base0E = colorscheme.pink;
      base0F = colorscheme.purple;
    };
  };
}
