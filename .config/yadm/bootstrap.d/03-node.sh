if command -v n >/dev/null 2>&1; then
  n install latest
  n install lts_latest
  n install lts
elif command -v nvm >/dev/null 2>&1; then
  nvm install stable
  nvm install --lts
fi