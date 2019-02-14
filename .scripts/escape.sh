#!/bin/sh

# control acts as escape when pressed for a short time.
# kill running instance
curr_xcape=$(pgrep xcape)
[[ -n $curr_xcape ]] && kill $curr_xcape

timeout=300 # something default so I don't end up without return
if [ -n "$1" ]; then
    timeout=$1
fi

xcape -t $timeout -e "Control_L=Escape"
