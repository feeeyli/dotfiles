{ pkgs-unstable, ... }:

{
  stylix.targets.zed.enable = false;

  programs.zed-editor = {
    enable = true;

    package = pkgs-unstable.zed-editor;

    extensions = [
      "nix"
      "rose-pine-theme"
      "html"
      "svelte"
      "biome"
      "astro"
      "qml"
    ];

    userSettings = {
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
      theme = "Rosé Pine";
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
