{ ... }:

{
  imports = [
    ./ts_ls.nix
  ];

  programs.nvf.settings.vim.lsp = {
    enable = true;
    formatOnSave = true;
    trouble.enable = true;
    # lspSignature.enable = true;
    servers = {
      emmet_ls = { };
      cssls = {
        filetypes = [ "vue" ];
      };
    };
  };
}
