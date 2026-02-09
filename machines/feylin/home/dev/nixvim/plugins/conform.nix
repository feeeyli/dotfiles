{
  plugins.conform-nvim = {
    enable = true;

    settings = {
      format_on_save = {
        timeout_ms = 500;
        lsp_fallback = true;
      };

      formatters_by_ft =
        let
          prettierFormat = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
        in
        {
          lua = [ "stylua" ];
          astro = prettierFormat;
          css = prettierFormat;
          graphql = prettierFormat;
          html = prettierFormat;
          javascript = prettierFormat;
          javascriptreact = prettierFormat;
          json = prettierFormat;
          jsonc = prettierFormat;
          less = prettierFormat;
          markdown = prettierFormat;
          mdx = prettierFormat;
          nix = [ "nixfmt" ];
          scss = prettierFormat;
          typescript = prettierFormat;
          typescriptreact = prettierFormat;
          vue = prettierFormat;
          yaml = prettierFormat;
          python = [
            "ruff_format"
            "ruff_organize_imports"
          ];
        };
    };
  };
}
