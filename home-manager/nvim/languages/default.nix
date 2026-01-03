{ ... }:

{
  imports = [
    ./vue.nix
    ./ts.nix
    ./nix.nix
  ];

  programs.nvf.settings.vim = {
    lsp = {
      enable = true;
      formatOnSave = true;
      trouble.enable = true;
      lspSignature.enable = true;
      servers = {
        emmet_ls = { };
        cssls = {
          filetypes = [ "vue" ];
        };
      };
    };

    diagnostics = {
      enable = true;
      config.update_in_insert = true;
    };

    languages = {
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;
      css = {
        enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
    };
  };
}
