let
  colors = import ../../themes/nvim.nix;
  red = (import ../../themes/kitty.nix).color1;
  color = hx: colors."base${hx}";
in
{
  imports = [
    (import ./blink.nix { inherit color; })
    (import ./syntax.nix { inherit color; })
    (import ./telescope.nix { inherit color; })
    (import ./pmenu.nix { inherit color; })
  ];

  highlight = {
    DiagnosticUnnecessary = {
      fg = color "03";
      italic = true;
    };

    BafaModified.fg = color "06";
    BafaDeleted.fg = color "08";

    Indent.fg = color "01";
    IndentScope.fg = color "02";

    Red.fg = red;
    StatusLine.bg = "none";
  };
}
