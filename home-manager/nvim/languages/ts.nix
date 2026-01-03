{ ... }:

{
  programs.nvf.settings.vim.languages.ts = {
    enable = true;
    extensions.ts-error-translator.enable = true;
    format.enable = true;
    format.type = [
      "biome"
      "prettier"
    ];
    lsp = {
      enable = true;
    };
  };
}
