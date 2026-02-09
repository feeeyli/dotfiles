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
              enabled = false;
            };
            functionLikeReturnTypes = {
              enabled = false;
            };
            propertyDeclarationTypes = {
              enabled = false;
            };
            parameterTypes = {
              enabled = false;
              suppressWhenArgumentMatchesName = true;
            };
            variableTypes = {
              enabled = false;
            };
          };
        };
      };
    };
  };
}
