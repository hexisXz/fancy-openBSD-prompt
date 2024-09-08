#!/bin/ksh

__powerline() {
    # Colors for ksh
    FG_CYAN="\033[38;5;6m"  # Cyan foreground
    FG_GREEN="\033[38;5;2m"  # Green foreground
    BG_DEFAULT="\033[49m"   # Default background
    RESET="\033[0m"         # Reset colors

    PROMPT_SEPARATOR="${FG_GREEN}▶${RESET}"

    ps1() {
        # Define the prompt color
        PS1="${FG_CYAN} \w ${RESET}${PROMPT_SEPARATOR} "

        export PS1
    }

    # Directly update PS1 on sourcing
    ps1
}

# Check if the shell is interactive
if [ -n "$PS1" ]; then
    __powerline
fi
unset __powerline
