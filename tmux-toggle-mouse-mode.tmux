#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCRIPTS_DIR="${CURRENT_DIR}/scripts"
source "$SCRIPTS_DIR/helper.sh"


function main() {
	tmux bind-key $(tmux-get-option '@toggle-mouse-mode-command-key' 'C-m') \
		run-shell -b ${SCRIPTS_DIR}/tmux-toggle-mouse-mode.sh
	exit 0
}

main