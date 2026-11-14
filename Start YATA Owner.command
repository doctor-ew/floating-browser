#!/bin/zsh
set -eu
cd "${0:A:h}/nostalgia-tv"
if ! command -v node >/dev/null 2>&1; then
  print 'Node.js is required. Install Node.js, then run this launcher again.'
  read 'reply?Press Return to close.'
  exit 1
fi
print 'Starting YATA Owner on http://127.0.0.1:4173'
print 'Open that address in your browser. Keep this window open while editing.'
print 'Publication requires configured local AWS credentials and a reviewed confirmation.'
exec node server.mjs
