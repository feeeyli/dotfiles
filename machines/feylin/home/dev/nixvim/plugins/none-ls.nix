{
  plugins.lsp-format = {
    enable = false;
    settings = {
      vue = {
        order = [ "null-ls" ];
        # sync = true;
        exclude = [ "html" ];
      };
    };
  };

  plugins.none-ls = {
    enable = false;

    sources = {
      formatting = {
        stylua.enable = true;
        biome.enable = true;
        nixfmt.enable = true;
        prettier.enable = true;
        prettier.disableTsServerFormatter = true;
        qmlformat.enable = true;
      };
      diagnostics = { qmllint.enable = true; };
    };

    settings = {
      on_attach = ''
        function(client, bufnr)
            if client.supports_method("textDocument/formatting") then
                vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                vim.api.nvim_create_autocmd("BufWritePre", {
                    group = augroup,
                    buffer = bufnr,
                    callback = function()
                        -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                        -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
                        vim.lsp.buf.format()
                    end,
                })
            end
        end'';
    };
  };
}
