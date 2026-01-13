#!/usr/bin/env bash

open-create-nome-menu() {
  local filePath

  filePath=$(fuzzel -d --prompt-only="Nome da nota  " --search=" " | awk 'gsub(/^[ \t]+|[ \t]+$/, "") gsub(/\s/, "-") 1 { printf tolower($0) }')

  if [[ $filePath = "" ]]; then
    filePath=$(date '+%F_%T')
  fi

  if [[ -e "$HOME/notes/${filePath}.md" ]]; then
    echo "arquivo já existe"
    filePath="${filePath}_$(date '+%F')"
  fi

  kitty -e nvim "$HOME/notes/${filePath}.md"
}

open-notes-menu() {
  local file
  file=$(printf " Nova Nota%s\n Abrir pasta" "$(fd --base-directory ~/notes -e md | awk '{printf "\n "$0}')" | fuzzel -d)

  if [[ $file = "" ]]; then
    exit 1
  fi

  case $file in
  *) open-create-nome-menu ;;
  *) kitty -e yazi ~/notes ;;
  *) kitty -e nvim "$HOME/notes/$(awk 'sub(/^\s/, "")1' <<<"$file")" ;;
  esac
}

open-notes-menu
