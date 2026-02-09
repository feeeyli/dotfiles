{ hmConfig, ... }:

let
  colors = hmConfig.theme.colorscheme;
in
{
  imports = [
    ./blink.nix
    ./syntax.nix
    ./telescope.nix
    ./pmenu.nix
  ];

  highlight = {
    DiagnosticUnnecessary = {
      fg = colors.gray;
      italic = true;
    };

    BafaModified.fg = colors.lighter-gray;
    BafaDeleted.fg = colors.red;

    Indent.fg = colors.dark-gray;
    IndentScope.fg = colors.dark-gray;

    Red.fg = colors.red;
    StatusLine.bg = "none";
  };
}
