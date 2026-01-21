let
  color = hx: (import ../../themes/nvim.nix)."base${hx}";
in
{
  plugins.highlight-colors = {
    enable = true;
    settings.render = "virtual";
    settings.custom_colors = [
      {
        label = "color \"00\"";
        color = color "00";
      }
      {
        label = "color \"01\"";
        color = color "01";
      }
      {
        label = "color \"02\"";
        color = color "02";
      }
      {
        label = "color \"03\"";
        color = color "03";
      }
      {
        label = "color \"04\"";
        color = color "04";
      }
      {
        label = "color \"05\"";
        color = color "05";
      }
      {
        label = "color \"06\"";
        color = color "06";
      }
      {
        label = "color \"07\"";
        color = color "07";
      }
      {
        label = "color \"08\"";
        color = color "08";
      }
      {
        label = "color \"09\"";
        color = color "09";
      }
      {
        label = "color \"0A\"";
        color = color "0A";
      }
      {
        label = "color \"0B\"";
        color = color "0B";
      }
      {
        label = "color \"0C\"";
        color = color "0C";
      }
      {
        label = "color \"0D\"";
        color = color "0D";
      }
      {
        label = "color \"0E\"";
        color = color "0E";
      }
      {
        label = "color \"0F\"";
        color = color "0F";
      }
    ];
  };
}
