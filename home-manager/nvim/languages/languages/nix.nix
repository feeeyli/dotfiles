{ ... }:

{
  programs.nvf.settings.vim.languages.nix = {
    enable = true;
    format.enable = true;
    format.type = [ "nixfmt" ];
    lsp = {
      enable = true;
      servers = [ "nixd" ];
    };
  };
}
