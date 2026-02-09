{ hmConfig, ... }:

let
  colors = hmConfig.theme.colorscheme;
in
{
  highlight = {
    TelescopeBorder.fg = colors.lighter-gray;
    TelescopePromptBorder.fg = colors.lighter-gray;
    TelescopeResultsBorder.fg = colors.lighter-gray;
    TelescopePreviewBorder.fg = colors.lighter-gray;
    TelescopePromptPrefix.bg = "none";
    TelescopePromptNormal.bg = "none";
    TelescopeNormal.bg = "none";
    TelescopeResultsTitle.fg = colors.lighter-gray;
  };
}
