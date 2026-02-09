SCRIPTS_PATH="$HOME/dotfiles/machines/feylin/scripts";

utils() {
  local OPTIONS="󰚰 Atualizar Roblox\n px -> rem"
  local choice

  choice=$(echo -e "$OPTIONS" | fuzzel -d -l 3 -w 18)

  case "$choice" in
    *"Atualizar Roblox")
      notify-send "Atualizando Roblox..."

      if flatpak update --noninteractive; then
        notify-send "Roblox Atualizado!"
      else
        notify-send "Oops, Algo deu errado"
      fi

      ;;
    *"px -> rem")
      local px=$(fuzzel --prompt-only="px  " -d)

      RESULT=$(awk -v num="$px" 'BEGIN { printf "%g\n", num/16 }')

      notify-send "${px}px -> ${RESULT}rem" -t 750

      ;;
    *)
      exit 0
      ;;
  esac
}

main() {
  local OPTIONS=(
    " Musica"
    " Notas"
    " Timer"
    "⏻ Power"
    "󱊖 Tray"
    " Utilitarios"
  )
  local choice

  choice=$(printf '%s\n' "${OPTIONS[@]}" | fuzzel -d -l "${#OPTIONS[@]}" -w 16)

  case "$choice" in
    *Musica)
      "$SCRIPTS_PATH"/music-control.sh
      ;;
    *Notas)
      "$SCRIPTS_PATH"/notes.sh
      ;;
    *Timer)
      "$SCRIPTS_PATH"/timer.sh
      ;;
    *Power)
      "$SCRIPTS_PATH"/power-menu.sh
      ;;
    *Tray)
      kitty -e tray-tui
      ;;
    *Utilitarios)
      utils 
      ;;
    *)
      exit 0
      ;;
  esac
}

main
