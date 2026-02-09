{ lib, ... }:

{
  plugins.actions-preview = {
    enable = true;

    settings = {
      highlight_command = [
        (lib.nixvim.mkRaw "require('actions-preview.highlight').delta()")
      ];
    };
  };
}
