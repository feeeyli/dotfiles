{ ... }:

{
  imports = [
    ./languages
    ./lsp
  ];

  programs.nvf.settings.vim = {
    diagnostics = {
      enable = true;
      config.update_in_insert = true;
    };
  };
}
