#!/bin/sh

set -e

"$(dirname "$0")/npm_install.sh" tsserver typescript@^6.0.0
"$(dirname "$0")/npm_install.sh" typescript-language-server typescript-language-server
