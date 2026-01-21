{
  lsp.servers.nixd = {
    enable = true;
    config = {
      settings.nixd = {
        nixpkgs.expr = ''import <nixpkgs> { }'';
        formatting.command = [ "nixfmt" ];
        options.home_manager.expr = "(builtins.getFlake \"/home/feyli/dotfiles\").nixosConfigurations.nixos.options.home-manager.users.type.getSubOptions []";
      };
    };
  };
}
