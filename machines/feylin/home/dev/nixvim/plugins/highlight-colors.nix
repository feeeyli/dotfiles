{ hmConfig, ... }:

let
  colors = hmConfig.theme.colorscheme;
in
{
  plugins.highlight-colors = {
    enable = true;
    settings.render = "virtual";
    settings.custom_colors = [
    ];
  };
}
