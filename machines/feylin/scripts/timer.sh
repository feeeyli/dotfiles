format_time() {
  local total_seconds=$1

  local hours=$((total_seconds / 3600))
  local minutes=$(((total_seconds % 3600) / 60))
  local seconds=$((total_seconds % 60))

  local result=""
  
  if (( hours > 0 )); then
    result+="$hours"h
  fi
  
  if (( minutes > 0 )); then
    result+="$minutes"m
  fi

  result+="$seconds"s

  printf "%s" "$result"
}

time_to_seconds() {
  local time_str=$1

  IFS=":" read -r hours minutes seconds <<< "$time_str"


  echo "$total_seconds"
}

main() {
  local hours
  local minutes
  local seconds

  hours=$(fuzzel -d --prompt-only="Horas " --search=" " )
  minutes=$(fuzzel -d --prompt-only="Minutos " --search=" ")
  seconds=$(fuzzel -d --prompt-only="Segundos " --search=" ")

  total_seconds=$((hours * 3600 + minutes * 60 + seconds))
  notify-send "Timer de $(format_time "$total_seconds") começando" -t 2500
  sleep $total_seconds
  notify-send "TARAAAAA TEMPO ACABOU" -t 2500
}

main &
