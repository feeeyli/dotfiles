#!/usr/bin/env bash

add-to-queue() {
  local musics
  local choice
  local file

  musics=$(rmpc listall | sort)

  echo "AAA"

  choice=$(echo -e "$musics" | awk -F "/" '{printf $NF"\n"}' | fuzzel -d -w 75 -p "Escolha uma musica  " --match-mode=exact --hide-before-typing)

  file=$(echo -e "$musics" | awk -F "/" -v name="$choice" '$NF==name {print $0}')
  # choice=$(echo -e "$musics" | awk -F "/" '{gsub(/(\.mp3)|(\.m4a)|(\.flac)/, "")} {printf $NF"\n"}' | fuzzel -d -w 75 -p "Escolha uma musica  " --match-mode=exact --hide-before-typing)
  #
  # file=$(echo -e "$musics" | awk -F "/" -v name="$choice.mp3" '$NF==name {print $0}')

  rmpc add -p +0 "$HOME/music/$file"
}

force-play() {
  rmpc pause
  rmpc unpause
}

main() {
  local options
  local state=$(rmpc status | jq '.state' -r)

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
    amixer -c 1 sset "Auto-Mute Mode" Disabled
    amixer -c 1 sset Front unmute
    ;;
  esac

}

main
