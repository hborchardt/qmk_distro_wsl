maybe_qmk_welcome () {
  local RED='\033[0;31m'
  local YELLOW='\033[1;33m'
  local GREEN='\033[0;32m'
  local NC='\033[0m' # No Color

  echo "Welcome to QMK WSL!"
  echo "  * Documentation:    https://docs.qmk.fm"
  echo "  * Support:          https://discord.gg/Uq7gcHh"

  if [ ! -f ~/.qmk_hide_welcome ]; then
    echo ""
    echo "If you have not already done so,"
    echo -e "  run ${YELLOW}qmk setup${NC} to get started."
    echo -e "  run ${GREEN}qmk compile -kb <keyboard> -km default${NC} to start building."
    echo -e "  run ${RED}touch ~/.qmk_hide_welcome${NC} to hide this message."
  fi
}

maybe_qmk_welcome
