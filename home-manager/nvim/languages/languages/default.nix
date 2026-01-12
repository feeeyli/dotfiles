{ ... }:

{
  imports = [
    ./typescript.nix
    ./nix.nix
  ];

  programs.nvf.settings.vim.languages = {
    enableFormat = true;
    enableTreesitter = true;
    enableExtraDiagnostics = true;
    css = {
      enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };
    markdown = {
      enable = true;
      extensions.render-markdown-nvim.enable = true;
    };
    kotlin = {
      enable = true;
      lsp.enable = true;
    };
    java = {
      enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };
  };
}
