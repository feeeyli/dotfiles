#!/usr/bin/env bash

add-to-queue() {
  local musics
  local choice
  local file

  musics=$(rmpc queue | jq 'map("\(.metadata.artist) - \(.metadata.title) - \(.metadata.album)::\(.file)") | join("\n")' -r | sort | uniq)

  choice=$(echo -e "$musics" | awk -F:: '{print $1}' | fuzzel -d -w 75 -p "Escolha uma musica  " --match-mode=exact --hide-before-typing)

  file=$(echo -e "$musics" | awk -F:: -v name="$choice" '$1==name {print $NF}')

  rmpc add -p +0 "$HOME/music/$file"
}

force-play() {
  rmpc pause
  rmpc unpause
}

main() {
  local OPTIONS=" Play\n Pause\n Anterior\n Proxima\n󰲸 Tocar a Seguir\n Forçar"
  local choice

  choice=$(echo -e "$OPTIONS" | fuzzel -d -l 5 -w 16)

  case $choice in
  *Play) rmpc unpause ;;
  *Pause) rmpc pause ;;
  *Proxima)
    rmpc next -k
    force-play
    ;;
  *Anterior)
    rmpc prev -k -r
    force-play
    ;;
  *Recomeçar) rmpc seek 0 ;;
  *Tocar*) add-to-queue ;;
  *Forçar) force-play ;;
  esac

}

main
