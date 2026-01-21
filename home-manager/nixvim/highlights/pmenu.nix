{ color, ... }:

{
  highlight = {
    Pmenu = {
      bg = "none";
      fg = color "04";
    };
    PmenuSel = {
      bg = color "01";
      bold = true;
    };
    PmenuMatch = {
      fg = color "06";
      bold = true;
    };
    PmenuMatchSel = {
      bold = true;
    };
    PmenuSbar.bg = color "01";
    PmenuThumb.bg = color "02";
    PmenuExtra.fg = color "02";
    PmenuExtraSel = {
      bg = color "01";
      fg = color "02";
      bold = true;
    };
  };
}
