main() {
  local pkgs=(
    nodejs_25
    nodejs_24
    nodejs_22
    nodejs_20
    bun
    pnpm
    yarn
    biome
    prettier
    prettierd
    vue-language-server
    typescript-language-server
    python313
    python313Packages.pip
    python313Packages.uvicorn
    python313Packages.tkinter
    python315
  )

  local choice

  choice=$(printf '%s\n' "${pkgs[@]}" | fzf -m --no-input --height=~20 | awk '{printf "            "$1"\n"}')

  cat << EOF > flake.nix
{
  description = "Flake Shell";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.systems.url = "github:nix-systems/default";
  inputs.flake-utils = {
    url = "github:numtide/flake-utils";
    inputs.systems.follows = "systems";
  };

  outputs =
    { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.\${system};
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
$choice
          ];
          shellHook = ''
            zsh
          '';
        };
      }
    );
}
EOF
}

main
