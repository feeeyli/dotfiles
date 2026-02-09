{ pkgs, ... }:

{
  plugins.lspconfig = {
    enable = true;

    # servers = {
    #   css_variables = {
    #     enable = true;
    #     package = pkgs.callPackage ../lsp/css-variables.nix {};
    #     filetypes = [ "vue" "css" "scss" "sass" ];
    #   };
    #   somesass_ls = {
    #     enable = true;
    #     package = pkgs.callPackage ../lsp/css-variables.nix {};
    #     filetypes = [ "vue" "css" "scss" "sass" ];
    #     settings.somesass = {
    #       suggestAllFromOpenDocument = true;
    #       completion.suggestFromUseOnly = true;
    #     };
    #   };
    # };
  };
}
