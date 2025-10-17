{ pkgs, lib, ... }: 

{
  stylix.targets.vscode.enable = false;
  
  programs = {
    vscode = {
      enable = true;
      profiles.default = {
        userSettings = {
			"workbench.colorTheme" = lib.mkForce "Rosé Pine";
			"nix.enableLanguageServer" = true;
			"nix.serverPath" = "nil";
			"chat.commandCenter".enabled = false;
			"workbench.navigationControl".enabled = false;
			"editor.fontFamily" = lib.mkDefault "'JetBrainsMono Nerd Font Mono', monospace";
			"editor.fontLigatures" = true;
			"workbench.editor".empty.hint = "hidden";
			"explorer.confirmPasteNative" = false;
			"explorer.compactFolders" = false;
			"editor.formatOnSave" = true;
			"[typescriptreact]" = {
				"editor.defaultFormatter" = "biomejs.biome";
			};
			"editor.codeActionsOnSave" = {
				"source.organizeImports.biome" = "explicit";
				"source.fixAll.biome" = "explicit";
			};
			"workbench.activityBar.location" = "hidden";
			"workbench.startupEditor" = "none";
			"workbench.tips.enabled" = false;
			"editor.minimap.autohide" = "mouseover";
			"breadcrumbs.enabled" = false;
			"catppuccin-icons.hidesExplorerArrows" = true;
			"workbench.tree.indent" = 14;
			"window.commandCenter" = false;
			"workbench.layoutControl.enabled" = false;
			"window.menuBarVisibility" = "toggle";
			"terminal.integrated.cursorStyle" = "line";
			"terminal.integrated.fontFamily" = "'JetBrainsMono Nerd Font Mono', monospace";
			"terminal.integrated.fontLigatures".enabled = true;
			"editor.tabSize" = 4;
			"editor.detectIndentation" = false;
			"editor.insertSpaces" = false;
			"[javascript]" = {
				"editor.defaultFormatter" = "biomejs.biome";
			};
			"workbench.editor.editorActionsLocation" = "hidden";
		};
        keybindings = [
          {
            key = "ctrl+q";
            command = "workbench.action.quickOpenView";
          }
          {
            key = "ctrl+q";
            command = "-workbench.action.quit";
          }
        ];
        enableUpdateCheck = false;
        extensions = with pkgs; [
          vscode-extensions.mvllow.rose-pine
          vscode-extensions.jnoortheen.nix-ide
          vscode-extensions.bradlc.vscode-tailwindcss
          vscode-extensions.formulahendry.auto-rename-tag
		  vscode-extensions.biomejs.biome
        ];
      };
    };
  };
}