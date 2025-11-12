{ ... }:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "fwalch";
      plugins = [
        "git"
        "npm"
        "history"
        "node"
        "rust"
        "deno"
      ];
    };
    shellAliases = {
      zshconfig = "micro ~/.zshrc";
      ohmyzsh = "micro ~/.oh-my-zsh";
      cls = "clear";
      bx = "bunx";

      spacesniffer = "du -sh */ -t 100M | sort -hr";
      spacesnifferhidden = "du -sh -- * .*/ -t 100M 2>/dev/null | sort -hr";

      rebuild = "sudo nixos-rebuild switch --flake ~/dotfiles";
    };
    envExtra = ''
      export NVM_DIR="$HOME/.nvm"
      [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
      [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

      # pnpm
      export PNPM_HOME="/home/feyli/.local/share/pnpm"
      case ":$PATH:" in
        *":$PNPM_HOME:"*) ;;
        *) export PATH="$PNPM_HOME:$PATH" ;;
      esac
      # pnpm end

      # bun completions
      [ -s "/home/feyli/.bun/_bun" ] && source "/home/feyli/.bun/_bun"

      # bun
      export BUN_INSTALL="$HOME/.bun"
      export PATH="$BUN_INSTALL/bin:$PATH"

      # android studio
      export ANDROID_HOME="$HOME/Android/Sdk"
      export PATH="$PATH:$ANDROID_HOME/emulator"
      export PATH="$PATH:$ANDROID_HOME/platform-tools"

      #
      export PATH="$PATH:$HOME/.cargo/bin"

      [[ "$(tty)" == /dev/tty1 ]] && Hyprland

      ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'
    '';
  };
}
