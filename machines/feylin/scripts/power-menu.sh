#!/usr/bin/env bash

main() {
  local opts=(
    "⏻ Desligar"
    " Reiniciar"
    "󰈆 Sair"
  )
  local choice

  choice=$(printf '%s\n' "${opts[@]}" | fuzzel -d -l 3 -w 16)

  case "$choice" in
    *"Desligar")
      systemctl poweroff
      ;;
    *"Reiniciar")
      systemctl reboot
      ;;
    *"Sair")
      niri msg action quit
      ;;
    *)
      exit 0
      ;;
  esac
}

main
