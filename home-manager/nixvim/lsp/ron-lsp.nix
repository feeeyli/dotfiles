{ pkgs, lib, ... }:

{
  lsp.servers.ron-lsp = {
    enable = true;
    package = pkgs.ron-lsp;

    config = {
      cmd = [
        # (lib.nixvim.mkRaw ''vim.fn.expand("ron-lsp")'')
        "${pkgs.ron-lsp}/bin/ron-lsp"
      ];
      filetypes = [ "ron" ];
      root_dir = lib.nixvim.mkRaw ''
        function(fname)
        local util = require("lspconfig.util")
        return util.root_pattern("Cargo.toml", ".git")(fname) or vim.loop.cwd()
        end'';
      settings = { };
    };
  };
}
