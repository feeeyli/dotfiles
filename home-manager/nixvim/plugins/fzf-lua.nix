let
  colors = import ../../themes/kitty.nix;
in
{
  plugins.fzf-lua = {
    enable = true;
    settings = {
      ui_select = true;
      fzf_colors = {
        "bg+" = colors.color0;
        pointer = colors.color1;
        prompt = colors.color1;
      };
      winopts.preview.layout = "vertical";
    };
  };
}
