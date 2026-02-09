#!/usr/bin/env bash

pipe="/tmp/cava.fifo"

if [ -p $pipe ]; then
	unlink $pipe
fi
mkfifo $pipe

config_file="/tmp/waybar_cava_config"
echo "
[general]
bars = 22
framerate = 60
sleep_timer = 3
sensitivity = 100
lower_cutoff_freq = 50
higher_cutoff_freq = 10000
[input]
sample_rate = 44100
sample_bits = 8
channels = 1
autoconnect = 2
[output]
method = raw
raw_target = $pipe
data_format = ascii
ascii_max_range = 6
" > $config_file

cava -p $config_file &

# bar="▁▂▃▄▅▆▇█"    # For default fonts
# bar="⠀⠄⠆⠇"    # For default fonts
bar="⣀⣄⣤⣦⣧⣷⣿"    # For default fonts
# bar="abdcefgh"  # For my custom font

pipe="/tmp/cava.fifo"
dict="s/;//g;"

i=0
while [ $i -lt ${#bar} ]
do
	dict="${dict}s/$i/${bar:$i:1}/g;"
	i=$((i=i+1))
done

while read -r cmd; do
	echo $cmd | sed $dict
done < $pipe
