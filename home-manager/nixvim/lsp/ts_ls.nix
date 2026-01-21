{ lib, pkgs, ... }:

{
  lsp.servers.ts_ls = {
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
      init_options.plugins = [
        {
          name = "@vue/typescript-plugin";
          location = "${lib.getBin pkgs.vue-language-server}/lib/language-tools/packages/language-server";
          languages = [ "vue" ];
          configNamespace = "typescript";
        }
      ];
      settings = {
        typescript = {
          inlayHints = {
            includeInlayParameterNameHints = "all";
            includeInlayParameterNameHintsWhenArgumentMatchesName = true;
            includeInlayFunctionParameterTypeHints = true;
            includeInlayVariableTypeHints = true;
            includeInlayVariableTypeHintsWhenTypeMatchesName = true;
            includeInlayPropertyDeclarationTypeHints = true;
            includeInlayFunctionLikeReturnTypeHints = true;
            includeInlayEnumMemberValueHints = true;
          };
        };
      };
    };
  };
}
