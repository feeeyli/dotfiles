{ self, config, ... }:

let
  colorscheme = config.theme.colorscheme;
in
{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    historySubstringSearch.enable = true;
    shellAliases = {
      cls = "clear";
      bx = "bunx";
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

      ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=${colorscheme.gray}'

      eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/config.json)"

      source <(fzf --zsh)
    '';
  };

  programs.oh-my-posh = {
    enable = true;
    settings = {
      version = 3;
      blocks = [
        {
          alignment = "left";
          newline = false;
          type = "prompt";
          segments = [
            {
              foreground = colorscheme.primary;
              style = "plain";
              template = "{{ .Path }} ";
              type = "path";
              properties = {
                max_depth = 4;
                style = "agnoster_short";
                mapped_locations = {
                  "~/.config" = "";
                  "~/Downloads" = "󰇚";
                  "~/dotfiles" = "󱄅";
                  "~/www" = "";
                  "~/www/_rpgpedia" = "󱅕";
                };
              };
            }
            {
              background = "transparent";
              foreground = "cyan";
              style = "plain";
              template = "{{ .HEAD }}{{ if gt .Behind 0 }} ⇣{{ end }}{{ if gt .Ahead 0 }} ⇡{{ end }} ";
              type = "git";
              properties = {
                branch_icon = " ";
                commit_icon = "@";
                fetch_status = true;
                mapped_branches = {
                  "bug/*" = "🐛 ";
                  "component/*" = "🧱 ";
                  "feat/*" = "🚀 ";
                  main = "👁️ main";
                  master = "💀 master";
                };
              };
            }
            {
              type = "nix-shell";
              style = "powerline";
              foreground = "cyan";
              background = "transparent";
              template = "{{ if ne .Type \"unknown\" }}󱄅 {{ end }}";
            }
            {
              foreground = colorscheme.primary;
              style = "plain";
              template = " ";
              type = "text";
            }
          ];
        }
      ];
    };
  };
}
