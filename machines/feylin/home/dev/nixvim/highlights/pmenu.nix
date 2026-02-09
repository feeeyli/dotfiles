{ hmConfig, ... }:

let
  colors = hmConfig.theme.colorscheme;
in
{
  highlight = {
    Pmenu = {
      bg = "none";
      fg = colors.gray;
    };
    PmenuSel = {
      bg = colors.dark-gray;
      bold = true;
    };
    PmenuMatch = {
      fg = colors.lighter-gray;
      bold = true;
    };
    PmenuMatchSel = {
      bold = true;
    };
    PmenuSbar.bg = colors.dark-gray;
    PmenuThumb.bg = colors.dark-gray;
    PmenuExtra.fg = colors.dark-gray;
    PmenuExtraSel = {
      bg = colors.dark-gray;
      fg = colors.dark-gray;
      bold = true;
    };
  };
}
