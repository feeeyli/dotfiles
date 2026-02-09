{ lib, pkgs, ... }:

{
  lsp.servers.vtsls = {
    enable = true;
    config = {
      filetypes = [
        "vue"
        "javascript"
        "javascriptreact"
        "javascript.jsx"
        "typescript"
        "typescriptreact"
        "typescript.tsx"
      ];
      settings = {
        vtsls.tsserver.globalPlugins = [
          {
            name = "@vue/typescript-plugin";
            location = "${lib.getBin pkgs.vue-language-server}/lib/language-tools/packages/language-server";
            languages = [ "vue" ];
          }
        ];
      };
    };
  };
}
