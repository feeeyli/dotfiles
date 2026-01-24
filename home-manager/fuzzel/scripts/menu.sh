random-scripts() {
  local OPTIONS="󰚰 Atualizar Roblox"
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
    *)
      exit 0
      ;;
  esac
}

main() {
  local OPTIONS=" Musica\n Notas\n Utilitarios"
  local choice

  choice=$(echo -e "$OPTIONS" | fuzzel -d -l 3 -w 16)

  case "$choice" in
    *Musica)
      ~/dotfiles/home-manager/fuzzel/scripts/music-control.sh
      ;;
    *Notas)
      ~/dotfiles/home-manager/fuzzel/scripts/notes.sh
      ;;
    *Utilitarios)
      random-scripts 
      ;;
    *)
      exit 0
      ;;
  esac
}

main
