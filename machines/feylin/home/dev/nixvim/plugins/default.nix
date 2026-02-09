{ pkgs, ... }:

{
  imports = [
    # ./actions-preview.nix
    # ./cheatsheet.nix
    # ./cmp.nix
    # ./comment.nix
    # ./coq.nix
    # ./luasnip.nix
    # ./noice.nix
    # ./none-ls.nix
    # ./nvim-autopairs.nix
    # ./smear-curson.nix
    # ./ts-autotag.nix
    # ./yazi.nix
    ./alpha.nix
    ./bafa.nix
    ./blink-cmp.nix
    ./conform.nix
    ./cord.nix
    ./fidget.nix
    ./fzf-lua.nix
    ./highlight-colors.nix
    ./lspconfig.nix
    ./lualine.nix
    ./mini.nix
    ./oil.nix
    ./transparent.nix
    ./treesitter.nix
    ./typst.nix
    ./which-key.nix
  ];

  extraPlugins = [
    pkgs.vimPlugins.cheatsheet-nvim
    (pkgs.vimUtils.buildVimPlugin {
      name = "bafa.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "mistweaverco";
        repo = "bafa.nvim";
        rev = "7526f5fd61dba671c5fd571fb5351a031caf7b1a";
        sha256 = "sha256-K+KxhEVHru8K3IOByfIDe8ekTvdi9bcrAE4cHJLDFCE=";
      };
    })
    (pkgs.vimUtils.buildVimPlugin {
      name = "css-vars.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "jdrupal-dev";
        repo = "css-vars.nvim";
        rev = "0615782c320f729b04d9c51a8a61fb498ee4234a";
        sha256 = "sha256-K+KxhEVHru8K3IOByfIDe8ekTvdi9bcrAE4cHJLDFCE=";
      };
    })
  ];
}
