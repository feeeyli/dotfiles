{ hmConfig, ... }:

let
  colors = hmConfig.theme.colorscheme;
in
{
  plugins.fzf-lua = {
    enable = true;
    settings = {
      ui_select = true;
      fzf_colors = {
        "bg+" = colors.darker-gray;
        pointer = colors.dark-gray;
        prompt = colors.dark-gray;
      };
      winopts.preview.layout = "vertical";
    };
  };
}
