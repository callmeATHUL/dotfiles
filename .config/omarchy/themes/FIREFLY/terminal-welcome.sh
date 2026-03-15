#!/bin/bash
# FIREFLY Terminal Welcome Message

# ANSI color codes
FIREFLY_AMBER='\033[38;2;255;179;0m'
FIREFLY_YELLOW='\033[38;2;255;211;61m'
FIREFLY_WHITE='\033[38;2;232;234;237m'
FIREFLY_DIM='\033[38;2;138;148;168m'
RESET='\033[0m'

# Display FIREFLY banner
echo -e ""
echo -e "${FIREFLY_AMBER}   ███████╗██╗██████╗ ███████╗███████╗██╗  ██╗   ██╗${RESET}"
echo -e "${FIREFLY_YELLOW}   ██╔════╝██║██╔══██╗██╔════╝██╔════╝██║  ╚██╗ ██╔╝${RESET}"
echo -e "${FIREFLY_AMBER}   █████╗  ██║██████╔╝█████╗  █████╗  ██║   ╚████╔╝ ${RESET}"
echo -e "${FIREFLY_YELLOW}   ██╔══╝  ██║██╔══██╗██╔══╝  ██╔══╝  ██║    ╚██╔╝  ${RESET}"
echo -e "${FIREFLY_AMBER}   ██║     ██║██║  ██║███████╗██║     ███████╗██║   ${RESET}"
echo -e "${FIREFLY_YELLOW}   ╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝╚═╝     ╚══════╝╚═╝   ${RESET}"
echo -e ""
echo -e "${FIREFLY_DIM}   Illuminating Your System${RESET}"
echo -e ""
