{

  lsp.servers.vue_ls = {
    enable = true;
    config = {
      init_options = {
        vue = {
          hybridMode = false;
        };
        tracing = true;
      };
      # handlers = {
      #   "$/logTrace" = lib.nixvim.mkRaw ''
      #     function(err; result)
      #       print(result.message)
      #     end'';
      # };
      settings = {
        typescript = {
          inlayHints = {
            enumMemberValues = {
              enabled = true;
            };
            functionLikeReturnTypes = {
              enabled = true;
            };
            propertyDeclarationTypes = {
              enabled = true;
            };
            parameterTypes = {
              enabled = true;
              suppressWhenArgumentMatchesName = true;
            };
            variableTypes = {
              enabled = true;
            };
          };
        };
      };
    };
  };
}
