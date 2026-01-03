{
  pkgs,
  pkgs-unstable,
  lib,
  ...
}:

{
  # stylix.targets.zed.enable = false;

  programs.zed-editor = {
    enable = true;

    # package = pkgs-unstable.zed-editor;
    package = pkgs.zed-editor-fhs;

    extraPackages = [ pkgs.nodejs_22 ];

    extensions = [
      "nix"
      "rose-pine-theme"
      "html"
      "svelte"
      "biome"
      "astro"
      "qml"
      "vue"
    ];

    userSettings = {
      buffer_font_size = lib.mkForce 14;
      languages = {
        Nix = {
          language_servers = [
            "nil"
            "!nixd"
          ];
          formatter = {
            external = {
              command = "nixfmt";
            };
          };
        };
      };
      project_panel = {
        auto_fold_dirs = false;
      };
      # theme = "Rosé Pine";
      node = {
        path = lib.getExe pkgs.nodejs;
        npm_path = lib.getExe' pkgs.nodejs "npm";
      };
      lsp = {
        qml = {
          binary = {
            arguments = [
              "-E"
              "additional-args"
            ];
          };
        };
      };
    };
  };
}
