{ config, pkgs, ... }:

{
  imports = [
    ./waybar
    ./hyfetch
    ./kitty
    ./hyprland
    ./zsh
  ];

  home.username = "feyli";
  home.homeDirectory = "/home/feyli";

  # linka o arquivo de configuração no diretório atual para o local especificado no diretório home
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # linka todos os arquivos em `./scripts` para `~/.config/i3/scripts`
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;    # linka recursivamente
  #   executable = true;   # torna todos os arquivos executáveis
  # };

  # codifica o conteúdo do arquivo diretamente no arquivo de configuração nix
  # home.file.".xxx".text = ''
  #    xxx
  # '';

  # define o tamanho do cursor e dpi para monitor 4k
  # xresources.properties = {
  #   "Xcursor.size" = 16;
  #   # "Xft.dpi" = 172;
  # };

  # Pacotes que devem ser instalados para o perfil do usuário.
  home.packages = with pkgs; [
    
  ];

  # configuração básica do git, por favor, mude para a sua
  programs.git = {
    enable = true;
  };

  # Este valor determina com qual release do Home Manager sua
  # configuração é compatível. Isso ajuda a evitar quebras
  # quando um novo release do Home Manager introduz
  # mudanças incompatíveis com versões anteriores.
  #
  # Você pode atualizar o Home Manager sem alterar este valor. Veja
  # as notas de lançamento do Home Manager para uma lista de alterações
  # na versão de estado em cada release.
  home.stateVersion = "25.05";
}