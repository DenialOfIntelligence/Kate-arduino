#!/bin/sh
boardinfo=$(arduino-cli board list | grep -e "/.*")
port=$(echo "$boardinfo" | awk '{print $1}')
fqbn=$(echo "$boardinfo" | awk '{print $8}')
if [ -z "$port" ]; then
	echo "No bord found."
else
	arduino-cli compile --fqbn $fqbn $1 --no-color
	arduino-cli upload -p $port --fqbn $fqbn $1 --no-color
fi
