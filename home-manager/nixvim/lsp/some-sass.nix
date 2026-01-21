{ pkgs, ... }:

{
  lsp.servers.somesass_ls = {
    enable = true;
    package = pkgs.callPackage ./packages/some-sass-language-server.nix { };
    config = {
      filetypes = [
        "vue"
        "css"
        "scss"
        "sass"
        "svelte"
      ];
      settings.somesass = {
        completion.suggestFromUseOnly = true;
      };
    };
  };
}
