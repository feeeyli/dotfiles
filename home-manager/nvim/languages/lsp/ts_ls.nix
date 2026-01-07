{
  lib,
  pkgs,
  ...
}:
let
  inherit (lib.generators) mkLuaInline;
  inherit (lib.meta) getExe;
  inherit (lib.attrsets) getBin;
in
{
  # See https://github.com/sumrdev/nixcfg/blob/4c7c20d865056601c8ad788277b10f4691412c55/modules/programs/nvim.nix#L45-L93
  programs.nvf.settings.vim.lsp.servers.ts_ls = {
    enable = true;

    capabilities = mkLuaInline "capabilities";
    on_attach = mkLuaInline ''
      function(client)
        if vim.bo.filetype == 'vue' then
          client.server_capabilities.semanticTokensProvider.full = false
        else
          client.server_capabilities.semanticTokensProvider.full = true
        end
      end
    '';

    filetypes = [
      "typescript"
      "javascript"
      "javascriptreact"
      "typescriptreact"
      "vue"
    ];

    init_options = {
      plugins = [
        {
          name = "@vue/typescript-plugin";
          location = "${getBin pkgs.vue-language-server}/lib/language-tools/packages/language-server";
          languages = [ "vue" ];
          configNamespace = "typescript";
        }
      ];
    };
  };
}
