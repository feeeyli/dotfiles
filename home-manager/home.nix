{ lib, pkgs, ... }:

{
  imports = [
    ./waybar
    ./hyfetch
    ./kitty
    ./hyprland
    ./zsh
    ./dunst
    # ./rofi
    # ./neovim
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
  programs = {
    git = {
      enable = true;
      userName = "feeeyli";
      userEmail = "lunafeyli@gmail.com";
    };
#    gh = {
#      enable = true;
#      gitCredentialHelper = {
#        enable = true;
#      };
#    };
    helix = {
      enable = true;
      settings = {
        # theme = lib.mkForce "rose_pine";
        editor = {
          cursor-shape = {
            insert = "bar";
          };
        };
        keys.normal = {
          C-y = [
            ":sh rm -f /tmp/unique-file"
            ":insert-output yazi %{buffer_name} --chooser-file=/tmp/unique-file"
            ":insert-output echo \"\x1b[?1049h\x1b[?2004h\" > /dev/tty"
            ":open %sh{cat /tmp/unique-file}"
            ":redraw"
          ];
        };
      };
    };
    # neovim = {
    #   enable = true;
    #   # extraConfig = lib.fileContents ./nvim/init.lua;
    # };
  };


  gtk = {
    enable = true;
    iconTheme = {
      package = pkgs.rose-pine-icon-theme;
      name = "rose-pine";
    };
  };

  xdg.desktopEntries = {
    kitty = {
      noDisplay = true;
      name = "kitty";
    };
    kvantummanager = {
      noDisplay = true;
      name = "kvantummanager";
    };
    qt5ct = {
      noDisplay = true;
      name = "qt5ct";
    };
    qt6ct = {
      noDisplay = true;
      name = "qt6ct";
    };
    rofi = {
      noDisplay = true;
      name = "rofi";
    };
    rofi-theme-selector = {
      noDisplay = true;
      name = "rofi-theme-selector";
    };
    nixos-help = {
      noDisplay = true;
      name = "nixos-help";
    };
    nvim = {
      noDisplay = true;
      name = "nvim";
    };
    micro = {
      noDisplay = true;
      name = "micro";
    };
    nemo = {
      noDisplay = true;
      name = "nemo";
    };
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
