#!/usr/bin/env bash

add-to-queue() {
  local musics
  local choice
  local actual_song

  actual_song=$(rmpc song | jq '.metadata.title' -r)

  musics_str=$(rmpc listall | sort)
  readarray -t musics <<<"$musics_str"

  choice=$(echo -e "$musics_str" | awk -F "/" '{printf $NF"\n"}' | fuzzel -d -w 75 -p "Escolha uma musica  " --index --match-mode=exact --hide-before-typing --placeholder "$actual_song")

  if [[ -z $choice ]]; then
    echo "nehuma musica escolhida"
    exit 0
  fi
  
  rmpc add -p +0 "$HOME/music/${musics[choice]}"
}

force-play() {
  rmpc pause
  rmpc unpause
}

main() {
  local options
  local state

  state=$(rmpc status | jq '.state' -r)

  if [[ $state = "Play" ]]; then
    options+=" Pause"
  else
    options+=" Play"
  fi

  options+="\n Anterior\n Proxima\n󰲸 Tocar a Seguir\n Forçar\n󰎄 Abrir Player\n Desmutar"
  local choice

  choice=$(echo -e "$options" | fuzzel -d -l 4 -w 16)

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
  *Player) kitty -e rmpc ;;
  *Desmutar)
    ~/dotfiles/machines/feylin/scripts/unmute.sh
    ;;
  esac

}

main
