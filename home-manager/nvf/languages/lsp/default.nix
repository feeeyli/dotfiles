{ ... }:

{
  imports = [
    ./ts_ls.nix
  ];

  programs.nvf.settings.vim.lsp = {
    enable = true;
    formatOnSave = true;
    trouble.enable = true;
    # lspSignature.enable = true;
    servers = {
      emmet_ls = { };
      cssls = {
        filetypes = [ "vue" ];
      };
      nixd = {
        settings.nixd = {
          nixpkgs.expr = ''import <nixpkgs> { }'';
          formatting.command = [ "nixfmt" ];
          options = {
            #   nixos.expr = ''(builtins.getFlake "/home/feyli/dotfiles").nixosConfigurations.nixos.options'';
            # nvf.expr = "((builtins.getFlake \"/home/feyli/dotfiles\").inputs.nvf.lib.neovimConfiguration { pkgs = (import <nixpkgs> ); }).options";
            # home_manager.expr = ''(builtins.getFlake "/home/feyli/dotfiles").nixosConfigurations.nixos.config.home-manager.users.feyli'';
            home_manager.expr = "(builtins.getFlake \"/home/feyli/dotfiles\").nixosConfigurations.nixos.options.home-manager.users.type.getSubOptions []";
            nixvim.expr = "(builtins.getFlake \"/home/feyli/dotfiles\").nixosConfigurations.nixos.options.programs.nixvim.type.getSubOptions []";
          };
        };
      };
    };
    otter-nvim = {
      enable = true;
    };
  };
}
