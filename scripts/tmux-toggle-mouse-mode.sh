#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/helper.sh"

mouse_status=$(tmux-get-option "mouse")

if [ "$mouse_status" = "off" ]; then
    tmux-set-option "mouse" "on"
    display-message "Mouse On"
else
    tmux-set-option "mouse" "off"
    display-message "Mouse Off"
fi


